# 6. Après le test

[← Poser des questions](05-poser-des-questions.md) · [Accueil](../README.md)

Vous pouvez **continuer à utiliser l'application** après la séance, ou tout effacer. C'est votre
choix.

## Libérer de l'espace sans perdre vos discussions

Onglet **Données locales** de l'espace → **Effacer les connaissances de ce compte** : supprime
les pages, fragments et PDF téléchargés pour ce site. Les discussions et la configuration de la
connexion sont conservées ; une nouvelle synchronisation les recrée.

## Déconnecter un site

**Déconnecter le site** efface le mot de passe enregistré et la session de connexion de ce site.
Vos documents et discussions sont conservés. Pour resynchroniser, il faudra accepter à nouveau
les conditions et vous reconnecter.

## Supprimer un espace

Clic sur l'espace → **Supprimer l'espace** : l'espace, ses connexions, ses discussions, ses
données téléchargées et les sessions de connexion de ses sites disparaissent. Irréversible.

## Tout effacer

**Accueil → Configuration → Vos données → Effacer toutes mes données**, puis tapez `EFFACER`
pour confirmer.

Cela supprime vos espaces, sites, discussions, documents, mots de passe enregistrés, sessions,
copies de sécurité et journaux. Les modèles d'IA téléchargés dans Ollama sont conservés.

## Où sont vos données

Si vous voulez vérifier vous-même ou supprimer le dossier à la main (application fermée) :

| Système | Dossier |
|---|---|
| Windows | `%APPDATA%\ca.uqam.pt2026.desktop\` |
| macOS | `~/Library/Application Support/ca.uqam.pt2026.desktop/` |
| Linux | `~/.local/share/ca.uqam.pt2026.desktop/` |

Le dossier contient la base de données (`data\pt2026.db`), les documents téléchargés, les sessions
de navigation (`data\browser-profiles`) et les journaux. Le journal `traza.log` contient le texte
de vos questions : supprimez-le si vous ne gardez pas l'application.

## Désinstaller l'application

Effacez d'abord vos données (ci-dessus) si vous le souhaitez, puis :

- **Windows** : Paramètres → Applications → **PT2026 Desktop** → Désinstaller.
- **macOS** : glissez **PT2026 Desktop** d'Applications vers la Corbeille, puis supprimez le
  dossier de données indiqué plus haut.
- **Linux** : supprimez l'AppImage, ou `sudo apt remove pt2026-desktop`, puis le dossier de
  données.

## Désinstaller Ollama et les modèles (facultatif)

Les modèles occupent environ 8 Go. Pour les retirer :

```bash
ollama rm llama3.1:8b
ollama rm llama3.2:3b
ollama rm qwen2.5:1.5b
```

Puis désinstallez Ollama comme toute autre application (Linux : voir
<https://github.com/ollama/ollama/blob/main/docs/linux.md#uninstall>).

Si vous avez réglé `OLLAMA_KEEP_ALIVE` sous Windows, vous pouvez le retirer :
`[Environment]::SetEnvironmentVariable("OLLAMA_KEEP_ALIVE", $null, "User")` dans PowerShell.

## Vous retirer de l'étude

Écrivez à [courriel] en indiquant votre code participant (ex. `P07`). Vos réponses seront
supprimées, sans justification à fournir.
