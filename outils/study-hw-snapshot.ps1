<#
.SYNOPSIS
  Fiche materielle anonyme + mini-benchmark Ollama des 3 modeles du selecteur PT2026 (form.md, annexe J).

.DESCRIPTION
  Ne collecte aucune donnee personnelle (pas de nom d'utilisateur, de nom de machine ni d'adresse IP).
  Ajoute une ligne par modele a hardware.csv (cree le fichier si absent).
  Les modeles sont mesures du Top 3 au Top 1 : le Top 1 (modele par defaut) reste charge a la fin.

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File scripts\study-hw-snapshot.ps1 -Code P07
  powershell -ExecutionPolicy Bypass -File scripts\study-hw-snapshot.ps1 -Code P07 -Models llama3.1:8b -Out D:\etude\hardware.csv
#>
param(
    [Parameter(Mandatory = $true)][string]$Code,
    [string[]]$Models = @("llama3.1:8b", "llama3.2:3b", "qwen2.5:1.5b"),
    [string]$Out = (Join-Path (Get-Location) "hardware.csv"),
    [switch]$SkipBenchmark
)

$ErrorActionPreference = "SilentlyContinue"
$inv = [Globalization.CultureInfo]::InvariantCulture
$ollamaApi = "http://127.0.0.1:11434"

function Round1([double]$v) { [math]::Round($v, 1).ToString($inv) }

$os = Get-CimInstance Win32_OperatingSystem
$cpu = Get-CimInstance Win32_Processor | Select-Object -First 1
$cs = Get-CimInstance Win32_ComputerSystem

$gpuName = ""
$vramGb = ""
$nvsmi = Get-Command nvidia-smi -ErrorAction SilentlyContinue
if ($nvsmi) {
    $line = (& nvidia-smi --query-gpu=name,memory.total --format=csv,noheader,nounits | Select-Object -First 1)
    if ($line) {
        $parts = $line.Split(",")
        $gpuName = $parts[0].Trim()
        $vramGb = Round1 ([double]::Parse($parts[1].Trim(), $inv) / 1024)
    }
}
if (-not $gpuName) {
    $gpus = Get-CimInstance Win32_VideoController | Where-Object { $_.Name -notmatch "Basic|Remote|Virtual" }
    $gpuName = ($gpus | ForEach-Object { $_.Name }) -join " + "
    $regGpu = Get-ItemProperty "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0*" |
        Where-Object { $_."HardwareInformation.qwMemorySize" } | Select-Object -First 1
    if ($regGpu) { $vramGb = Round1 ([double]$regGpu."HardwareInformation.qwMemorySize" / 1GB) }
}

$sysDrive = $env:SystemDrive.TrimEnd(":")
$diskType = ""
$part = Get-Partition -DriveLetter $sysDrive
if ($part) {
    $pd = Get-PhysicalDisk | Where-Object { $_.DeviceId -eq "$($part.DiskNumber)" } | Select-Object -First 1
    if ($pd) { $diskType = "$($pd.MediaType)/$($pd.BusType)" }
}
$freeGb = Round1 ((Get-PSDrive $sysDrive).Free / 1GB)

$battery = Get-CimInstance Win32_Battery | Select-Object -First 1
$power = if (-not $battery) { "secteur (pas de batterie)" } elseif ($battery.BatteryStatus -eq 2) { "secteur" } else { "batterie" }
$scheme = (powercfg /getactivescheme) -replace '^.*\((.*)\)\s*$', '$1'

$ollamaVersion = ""
$ver = Invoke-RestMethod -Uri "$ollamaApi/api/version" -TimeoutSec 5
if ($ver) { $ollamaVersion = $ver.version }

function New-Row([string]$model, [int]$rank) {
    [ordered]@{
        code              = $Code
        date              = (Get-Date -Format "yyyy-MM-dd HH:mm")
        os                = "$($os.Caption) $($os.Version)"
        cpu               = $cpu.Name.Trim()
        cpu_coeurs        = $cpu.NumberOfCores
        cpu_threads       = $cpu.NumberOfLogicalProcessors
        ram_total_gb      = Round1 ($cs.TotalPhysicalMemory / 1GB)
        ram_libre_gb      = Round1 ((Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory * 1KB / 1GB)
        gpu               = $gpuName
        vram_gb           = $vramGb
        disque_systeme    = $diskType
        disque_libre_gb   = $freeGb
        alimentation      = $power
        mode_energie      = $scheme
        ollama_version    = $ollamaVersion
        rang              = $rank
        modele            = $model
        processeur_modele = ""
        chargement_s      = ""
        prompt_tok_s      = ""
        generation_tok_s  = ""
        reponse_chaude_s  = ""
    }
}

function Unload-All {
    $loaded = (Invoke-RestMethod -Uri "$ollamaApi/api/ps" -TimeoutSec 10).models
    foreach ($m in $loaded) {
        $body = @{ model = $m.name; keep_alive = 0 } | ConvertTo-Json
        Invoke-RestMethod -Uri "$ollamaApi/api/generate" -Method Post -Body $body -ContentType "application/json" | Out-Null
    }
    Start-Sleep -Seconds 2
}

function Invoke-Gen([string]$model, [string]$prompt, [int]$tokens) {
    $body = @{ model = $model; prompt = $prompt; stream = $false; options = @{ temperature = 0; num_predict = $tokens } } | ConvertTo-Json
    Invoke-RestMethod -Uri "$ollamaApi/api/generate" -Method Post -Body $body -ContentType "application/json" -TimeoutSec 600
}

$rows = @()
$ollamaUp = [bool]$ollamaVersion
if (-not $ollamaUp) { Write-Warning "Ollama injoignable sur $ollamaApi : benchmark ignore." }

for ($i = $Models.Count - 1; $i -ge 0; $i--) {
    $model = $Models[$i]
    $row = New-Row $model ($i + 1)
    if ($ollamaUp -and -not $SkipBenchmark) {
        Write-Host ("Top {0} - {1} : benchmark (~20-120 s)..." -f ($i + 1), $model)
        Unload-All
        $r = Invoke-Gen $model "Resume en trois phrases le role d'un plan de cours universitaire pour un etudiant." 200
        if ($r) {
            $row.chargement_s = Round1 ($r.load_duration / 1e9)
            if ($r.prompt_eval_duration -gt 0) { $row.prompt_tok_s = Round1 ($r.prompt_eval_count / ($r.prompt_eval_duration / 1e9)) }
            if ($r.eval_duration -gt 0) { $row.generation_tok_s = Round1 ($r.eval_count / ($r.eval_duration / 1e9)) }
            $sw = [Diagnostics.Stopwatch]::StartNew()
            $null = Invoke-Gen $model "En une phrase : a quoi sert Moodle pour un etudiant ?" 60
            $sw.Stop()
            $row.reponse_chaude_s = Round1 $sw.Elapsed.TotalSeconds
            $psm = (Invoke-RestMethod -Uri "$ollamaApi/api/ps").models | Where-Object { $_.name -eq $model } | Select-Object -First 1
            if ($psm -and $psm.size -gt 0) {
                $gpuPct = [math]::Round(100 * $psm.size_vram / $psm.size)
                $row.processeur_modele = if ($gpuPct -ge 100) { "100% GPU" } elseif ($gpuPct -le 0) { "100% CPU" } else { "{0}%/{1}% CPU/GPU" -f (100 - $gpuPct), $gpuPct }
            }
        }
        else {
            Write-Warning "Echec pour '$model' (modele telecharge ? 'ollama pull $model')."
        }
    }
    $rows += [pscustomobject]$row
}

$rows = $rows | Sort-Object rang
if (Test-Path $Out) {
    $rows | Export-Csv -Path $Out -NoTypeInformation -Append -Encoding UTF8
}
else {
    $rows | Export-Csv -Path $Out -NoTypeInformation -Encoding UTF8
}
$rows | Format-Table rang, modele, processeur_modele, chargement_s, generation_tok_s, reponse_chaude_s -AutoSize
Write-Host ("{0} ligne(s) ajoutee(s) a {1}" -f $rows.Count, $Out)
