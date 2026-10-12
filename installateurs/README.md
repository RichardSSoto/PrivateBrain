# Installateurs

Les installateurs **ne sont pas** dans ce dossier : ils sont trop volumineux pour un dépôt Git
(l'installateur Windows fait environ 300 Mo ; GitHub refuse les fichiers de plus de 100 Mo).

👉 Téléchargez-les dans **[Releases](https://github.com/RichardSSoto/Tessera/releases/latest)**,
puis suivez [Installer l'application](../docs/01-installer.md).

---

## Pour l'équipe : publier une version

1. Générer les installateurs dans le dépôt de l'application (`scripts/build-windows.ps1` pour
   Windows ; workflow *Release* de GitHub Actions pour macOS et Linux).
2. Renommer les fichiers sans espaces :
   `PT2026-Desktop_<version>_x64-setup.exe`, `PT2026-Desktop_<version>_aarch64.dmg`,
   `PT2026-Desktop_<version>_x64.dmg`, `PT2026-Desktop_<version>_amd64.AppImage`,
   `PT2026-Desktop_<version>_amd64.deb`.
3. Calculer les empreintes (PowerShell, dans le dossier des installateurs) :

   ```powershell
   Get-ChildItem PT2026-Desktop_* | ForEach-Object {
     "{0}  {1}" -f (Get-FileHash $_ -Algorithm SHA256).Hash.ToLower(), $_.Name
   } | Set-Content SHA256SUMS.txt -Encoding ascii
   ```

4. Créer la release (dans ce dépôt, avec [GitHub CLI](https://cli.github.com/)) :

   ```powershell
   gh release create v<version> PT2026-Desktop_* SHA256SUMS.txt --title "PT2026 Desktop <version> (étude)" --notes "Version gelée pour l'étude. Voir README pour l'installation."
   ```

   Ou sur github.com : **Releases → Draft a new release**, glisser les fichiers dans *Assets*.

**Une seule version pour toute l'étude principale** : ne remplacez pas les fichiers d'une release
en cours d'étude. Si une correction est inévitable, publiez une nouvelle version et notez la
version utilisée par chaque participant.
