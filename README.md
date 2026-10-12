# Tessera — Évaluation de PT2026 Desktop

Bienvenue, et merci de participer à l'évaluation de **PT2026 Desktop**, un assistant qui lit
**vos** sites universitaires (Moodle, Mon Portail, autres sites) et répond à vos questions à partir
de ce qu'il y a trouvé. Tout se passe **sur votre ordinateur** : le modèle d'intelligence
artificielle fonctionne localement (Ollama) et aucune donnée n'est envoyée à un serveur de
l'équipe.

Ce dépôt contient tout ce dont vous avez besoin : l'installateur, le pas-à-pas d'installation, les
fiches de tâches et les questionnaires. C'est **le logiciel** que nous évaluons, pas vous.

> Ce projet est réalisé dans le cadre d'un projet technique à l'UQAM.
> Responsable : [Nom], [programme] — [courriel] · Supervision : [Nom], [département]

---

## Déroulement en 3 temps

| Quand | Quoi | Durée | Documents |
|---|---|---|---|
| **1. Avant la séance** (chez vous) | Lire l'information et le consentement, installer l'application, installer Ollama et les 3 modèles, faire les 3 premières étapes de l'assistant de démarrage | 30 à 45 min (surtout du téléchargement) | [Avant de commencer](docs/00-avant-de-commencer.md) · [Installer](docs/01-installer.md) · [Ollama et modèles](docs/02-ollama-et-modeles.md) · [Premier démarrage](docs/03-premier-demarrage.md) |
| **2. Pendant la séance** (avec un membre de l'équipe) | Créer votre espace, connecter vos sites, poser des questions, remplir les questionnaires | 70 à 85 min | Fiches remises pendant la séance : [fiches de tâches](test/fiches-taches.md), [aide-mémoire](test/aide-memoire.md), [questionnaires](questionnaires/) |
| **3. Après la séance** | Garder l'application ou l'effacer, désinstaller si vous le souhaitez | 5 min | [Guides de référence](#guides-de-référence) · [Après le test](docs/06-apres-le-test.md) |

**Important — ne lisez pas à l'avance** les fiches de tâches ni les guides 04, 05 et 06 : pendant la
séance, nous observons si l'application se comprend **sans explication**. Si vous les avez déjà
lus, dites-le simplement à l'expérimentateur ; ce n'est pas grave.

---

## Télécharger l'installateur

Les installateurs sont dans la section **[Releases](https://github.com/RichardSSoto/Tessera/releases/latest)** de ce dépôt
(colonne de droite sur GitHub → *Releases* → *Assets*).

| Système | Fichier à télécharger |
|---|---|
| Windows 10 / 11 (64 bits) | `PT2026-Desktop_<version>_x64-setup.exe` |
| macOS (Apple Silicon : M1, M2, M3, M4) | `PT2026-Desktop_<version>_aarch64.dmg` |
| macOS (Intel) | `PT2026-Desktop_<version>_x64.dmg` |
| Linux (Ubuntu 22.04 ou équivalent) | `PT2026-Desktop_<version>_amd64.AppImage` ou `.deb` |

Le fichier `SHA256SUMS.txt` permet de vérifier que le téléchargement n'a pas été altéré (voir
[Installer](docs/01-installer.md#vérifier-le-téléchargement-facultatif)).

**Configuration minimale** : 8 Go de mémoire (16 Go recommandés), environ **12 Go d'espace
disque libre** (application ≈ 1 Go, les 3 modèles ≈ 8 Go), connexion Internet pour l'installation
et la synchronisation.

---

## Guides de référence

À consulter **après** la séance, ou si l'expérimentateur vous le propose.

1. [Avant de commencer](docs/00-avant-de-commencer.md) — prérequis, ce qui reste sur votre ordinateur
2. [Installer l'application](docs/01-installer.md) — Windows, macOS, Linux
3. [Installer Ollama et les modèles](docs/02-ollama-et-modeles.md)
4. [Premier démarrage](docs/03-premier-demarrage.md) — l'assistant de démarrage
5. [Créer un espace et connecter vos sites](docs/04-espace-et-sites.md)
6. [Poser des questions](docs/05-poser-des-questions.md) — sources, modèles, langues
7. [Après le test](docs/06-apres-le-test.md) — effacer vos données, désinstaller
8. [Dépannage](docs/depannage.md)

## Documents de l'étude

- [Information et consentement](consentement.md)
- [Fiches de tâches](test/fiches-taches.md) et [aide-mémoire](test/aide-memoire.md)
- Questionnaires : [profil](questionnaires/01-profil.md) · [SUS](questionnaires/02-sus.md) ·
  [fonctionnalités](questionnaires/03-fonctionnalites.md) ·
  [confidentialité](questionnaires/04-confidentialite.md) · [entretien](questionnaires/05-entretien.md)
- [Fiche matérielle (facultative)](outils/README.md)

---

## Vos données en bref

- Vous saisissez **vous-même** vos identifiants dans la fenêtre de connexion officielle
  (Microsoft / UQAM). L'expérimentateur ne les voit pas et ne les note pas.
- Nous ne notons **aucune** de vos notes ni aucun contenu personnel : seulement le temps, la
  réussite des tâches et vos réponses aux questionnaires, sous un code anonyme (ex. `P07`).
- Ce que l'application télécharge reste dans un dossier de votre ordinateur. Vous pouvez tout
  effacer en un clic à la fin ([Après le test](docs/06-apres-le-test.md)).
- Vous pouvez arrêter à tout moment, sans justification.

## Un problème ?

Consultez le [dépannage](docs/depannage.md), puis écrivez à [courriel]. N'envoyez **jamais** de mot
de passe, de capture d'écran de vos notes ni de fichier de votre dossier de données sans l'avoir
relu.
