# 2. Installer Ollama et les modèles

[← Installer l'application](01-installer.md) · Suivant : [Premier démarrage →](03-premier-demarrage.md)

**Ollama** est le moteur gratuit qui fait tourner le modèle d'IA **sur votre ordinateur**. Sans
lui, PT2026 ne peut pas rédiger de réponses. Une fois les modèles téléchargés, il n'a plus besoin
d'Internet.

L'étude utilise **3 modèles**, classés du plus complet au plus léger :

| Rang dans l'application | Modèle | Téléchargement | Rôle |
|---|---|---|---|
| **Top 1** (par défaut) | `llama3.1:8b` | ≈ 4,9 Go | Réponses les plus cohérentes |
| **Top 2** | `llama3.2:3b` | ≈ 2,0 Go | Bon compromis vitesse / qualité |
| **Top 3** | `qwen2.5:1.5b` | ≈ 1,0 Go | Très rapide, pour les ordinateurs modestes |

Prévoyez **environ 8 Go** de téléchargement. Faites-le avant la séance, idéalement sur un bon
Wi-Fi.

## Étape 1 — Installer Ollama

1. Allez sur **<https://ollama.com/download>** et choisissez votre système.
2. Installez-le :
   - **Windows** : lancez `OllamaSetup.exe`. Ollama démarre tout seul et une icône de lama
     apparaît près de l'horloge.
   - **macOS** : ouvrez le `.zip`, glissez **Ollama** dans Applications, puis ouvrez-le une fois.
   - **Linux** : dans un terminal, `curl -fsSL https://ollama.com/install.sh | sh`.
3. Vérifiez qu'il fonctionne : ouvrez un terminal (Windows : **PowerShell** ; macOS / Linux :
   **Terminal**) et tapez :

   ```bash
   ollama --version
   ```

   Un numéro de version doit s'afficher.

Vous n'avez **pas** besoin de créer un compte Ollama.

## Étape 2 — Télécharger les 3 modèles

Dans le même terminal, tapez ces 3 commandes, une à la fois (chacune affiche une barre de
progression) :

```bash
ollama pull llama3.1:8b
ollama pull llama3.2:3b
ollama pull qwen2.5:1.5b
```

Vérifiez ensuite :

```bash
ollama list
```

Les 3 modèles doivent apparaître.

> **N'utilisez jamais** un modèle dont le nom se termine par `-cloud` (par exemple
> `deepseek-v3.1:671b-cloud`) : malgré le nom Ollama, il s'exécute sur des serveurs distants.

## Étape 3 — Garder le modèle en mémoire (recommandé)

Par défaut, Ollama décharge le modèle après 5 minutes sans question ; la question suivante attend
alors 10 à 30 secondes. Pour l'éviter pendant la séance, demandez-lui de le garder 30 minutes :

**Windows (PowerShell)**

```powershell
setx OLLAMA_KEEP_ALIVE 30m
```

Puis quittez Ollama (clic droit sur l'icône du lama près de l'horloge → **Quit Ollama**) et
relancez-le depuis le menu Démarrer.

**macOS (Terminal)**

```bash
launchctl setenv OLLAMA_KEEP_ALIVE 30m
```

Puis quittez Ollama (icône du lama dans la barre de menus → **Quit Ollama**) et rouvrez-le. Ce
réglage dure jusqu'au prochain redémarrage du Mac : refaites-le le jour de la séance si vous avez
redémarré.

**Linux (service systemd)**

```bash
sudo systemctl edit ollama
```

Ajoutez ces deux lignes, enregistrez, puis redémarrez le service :

```ini
[Service]
Environment="OLLAMA_KEEP_ALIVE=30m"
```

```bash
sudo systemctl restart ollama
```

## Étape 4 — Petit test (facultatif)

```bash
ollama run qwen2.5:1.5b "Dis bonjour en une phrase."
```

Une phrase doit s'afficher en quelques secondes. Tapez `/bye` si une invite reste ouverte.

## C'est fait ?

Passez au [Premier démarrage](03-premier-demarrage.md).
