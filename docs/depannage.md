# Dépannage

[← Accueil](../README.md)

| Symptôme | Que faire |
|---|---|
| Windows : « Windows a protégé votre ordinateur » | **Informations complémentaires** → **Exécuter quand même** ([Installer](01-installer.md#windows)) |
| macOS : « impossible d'ouvrir » / « développeur non vérifié » | **Réglages Système → Confidentialité et sécurité → Ouvrir quand même** ([Installer](01-installer.md#macos)) |
| Linux : l'AppImage ne démarre pas | `sudo apt install libfuse2` (Ubuntu 24.04 : `libfuse2t64`) |
| « Ollama n'est pas détecté » | Démarrez Ollama (Windows : menu Démarrer ; macOS : Applications ; Linux : `sudo systemctl start ollama`), puis **Vérifier à nouveau** |
| Le modèle n'apparaît pas dans le sélecteur | `ollama list` dans un terminal ; s'il manque, `ollama pull <modèle>` ([Ollama et modèles](02-ollama-et-modeles.md)) |
| La première réponse prend 10 à 30 s | Chargement du modèle en mémoire ; les suivantes sont plus rapides. Réglez `OLLAMA_KEEP_ALIVE=30m` ([étape 3](02-ollama-et-modeles.md#étape-3--garder-le-modèle-en-mémoire-recommandé)) |
| Toutes les réponses sont très lentes | Ordinateur sur secteur ; fermez les applications lourdes ; essayez le Top 2 ou le Top 3 |
| La synchronisation reste sur « En attente de la fenêtre de connexion PT2026 » | Terminez la connexion dans la fenêtre de connexion (double authentification) jusqu'au tableau de bord, puis cliquez sur **Continuer — je suis connecté** dans la **fenêtre principale** de PT2026 ([pas à pas](04-espace-et-sites.md#étape-2--connecter-moodle-uqam)) |
| La fenêtre de connexion n'apparaît pas ou a été fermée | Regardez dans la barre des tâches ; sinon relancez **Synchroniser** |
| Microsoft boucle ou affiche « Nous n'avons pas pu vous connecter » | Fermez la fenêtre de connexion, attendez une minute, relancez **Synchroniser** ([autres cas](04-espace-et-sites.md#si-la-connexion-ne-se-passe-pas-comme-prévu)) |
| Synchronisation vide après **Continuer** | Vous avez cliqué avant l'affichage du tableau de bord : relancez **Synchroniser** et attendez **Mes cours** (Moodle) ou l'accueil (Mon Portail) |
| « Version Pro requise » en ajoutant un site | La version gratuite permet 2 sites par espace : créez un autre espace ou supprimez une connexion |
| Une note ou un cours manque dans les réponses | Relancez **Synchroniser** ; vérifiez que la page est visible quand vous êtes connecté au site |
| « Une synchronisation est en cours » | Attendez la fin avant d'effacer ou d'importer des données |

## Contacter l'équipe

1. **Accueil → Configuration → Aide et diagnostic → Créer un paquet de diagnostic**. Le fichier
   contient les versions, les réglages (sans clés ni mots de passe), des compteurs et la fin du
   journal, avec courriels, liens et jetons masqués. **Aucun contenu de cours ni conversation.**
2. Ne cochez **Inclure la trace des questions** que si nous vous le demandons : elle contient le
   texte de vos questions et des réponses.
3. Ouvrez le fichier pour le relire, puis envoyez-le à [courriel] avec une courte description
   (ce que vous faisiez, ce qui s'est passé, votre système).

L'application n'envoie jamais rien d'elle-même.
