# 1. Installer l'application

[← Avant de commencer](00-avant-de-commencer.md) · Suivant : [Ollama et modèles →](02-ollama-et-modeles.md)

Téléchargez le fichier de votre système dans **[Releases](https://github.com/RichardSSoto/Tessera/releases/latest)** (section
*Assets*).

| Système | Fichier |
|---|---|
| Windows 10 / 11 (64 bits) | `PT2026-Desktop_<version>_x64-setup.exe` |
| macOS Apple Silicon (M1 à M4) | `PT2026-Desktop_<version>_aarch64.dmg` |
| macOS Intel | `PT2026-Desktop_<version>_x64.dmg` |
| Linux | `PT2026-Desktop_<version>_amd64.AppImage` ou `.deb` |

Pour savoir si votre Mac est Apple Silicon ou Intel : menu  → **À propos de ce Mac** → ligne
*Puce* (Apple M…) ou *Processeur* (Intel).

> **Version de test non signée.** Cette version pilote n'est pas encore signée par un certificat
> commercial. Windows et macOS afficheront donc un avertissement la première fois. Les étapes
> ci-dessous expliquent comment continuer. Ne téléchargez l'application **que depuis ce dépôt**.

## Windows

1. Double-cliquez sur `PT2026-Desktop_<version>_x64-setup.exe`.
2. Si Windows affiche **« Windows a protégé votre ordinateur »** (SmartScreen) : cliquez sur
   **Informations complémentaires**, puis **Exécuter quand même**. L'éditeur apparaît comme
   « Éditeur inconnu » : c'est normal pour cette version.
3. Choisissez la langue de l'installateur, puis suivez les étapes. L'installation se fait pour
   votre compte seulement : **aucun droit administrateur** n'est nécessaire.
4. Ouvrez **PT2026 Desktop** depuis le menu Démarrer.

Si votre antivirus bloque l'installateur, écrivez-nous plutôt que de désactiver l'antivirus.

## macOS

1. Ouvrez le fichier `.dmg` et glissez **PT2026 Desktop** dans le dossier **Applications**.
2. Ouvrez l'application depuis **Applications**. macOS indique qu'elle « ne peut pas être
   ouverte » ou « ne peut pas être vérifiée » : cliquez sur **OK** (ou **Terminé**).
3. Ouvrez **Réglages Système → Confidentialité et sécurité**, descendez jusqu'au message
   concernant PT2026 Desktop et cliquez sur **Ouvrir quand même**, puis confirmez avec votre mot
   de passe.
4. Au premier ajout d'un site avec mot de passe, macOS peut demander l'accès au **trousseau** :
   choisissez **Toujours autoriser**.

Si le bouton **Ouvrir quand même** n'apparaît pas, ouvrez le Terminal et tapez :

```bash
xattr -dr com.apple.quarantine "/Applications/PT2026 Desktop.app"
```

## Linux

**AppImage** (toutes distributions) :

```bash
chmod +x PT2026-Desktop_*_amd64.AppImage
./PT2026-Desktop_*_amd64.AppImage
```

Sur Ubuntu 22.04 ou plus, l'AppImage a besoin de `libfuse2` :
`sudo apt install libfuse2` (Ubuntu 24.04 : `sudo apt install libfuse2t64`).

**.deb** (Ubuntu, Debian) :

```bash
sudo apt install ./PT2026-Desktop_*_amd64.deb
```

puis lancez **PT2026 Desktop** depuis le menu des applications.

Pour enregistrer des mots de passe, un trousseau doit être actif (GNOME Keyring ou KWallet). Sans
trousseau, l'application fonctionne, mais la clé de chiffrement est conservée dans un fichier
protégé de votre dossier personnel.

## Vérifier le téléchargement (facultatif)

Le fichier `SHA256SUMS.txt` de la release contient l'empreinte de chaque installateur.

- **Windows (PowerShell)** : `Get-FileHash .\PT2026-Desktop_<version>_x64-setup.exe -Algorithm SHA256`
- **macOS** : `shasum -a 256 PT2026-Desktop_<version>_aarch64.dmg`
- **Linux** : `sha256sum PT2026-Desktop_<version>_amd64.AppImage`

La valeur affichée doit être identique à celle de `SHA256SUMS.txt`.

## C'est fait ?

Passez à [Installer Ollama et les modèles](02-ollama-et-modeles.md). L'application peut rester
fermée pour l'instant.
