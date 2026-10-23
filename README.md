# PrivateBrain — Évaluation de Projet Technique

Bienvenue et merci de participer à l’évaluation de **PrivateBrain** !

PrivateBrain est un assistant intelligent qui peut consulter et comprendre le contenu de vos plateformes et sites Web habituels, notamment **Moodle, Mon Portail et d’autres site web.

Vous pouvez ensuite discuter avec PrivateBrain et lui poser des questions sur les informations disponibles sur ces plateformes. Par exemple, vous pouvez lui demander de retrouver une date d’examen ou de résumer les consignes d’un devoir.

**La confidentialité est au cœur de PrivateBrain**. L’outil fonctionne directement sur votre ordinateur : le modèle d’intelligence artificielle (LLM) est exécuté localement et les données consultées ne sont pas envoyées aux serveurs de l’équipe de développement.

Ce dépôt contient toutes les ressources nécessaires à votre participation : **l’installateur, le guide d’installation étape par étape, les fiches de tâches et les questionnaires**.

L’objectif de cette évaluation est de recueillir vos impressions sur le fonctionnement de l’outil, son utilité et sa facilité d’utilisation. **C’est le logiciel que nous évaluons, pas vous**. Il n’y a pas de bonne ou de mauvaise réponse : vos commentaires et vos difficultés nous aideront à améliorer PrivateBrain.


> Ce projet est réalisé dans le cadre d'un projet technique à l'UQAM.
> Responsable : [Richard Day Santiago SOto], [MGL] — [santiago_soto.richard_day@courrier.uqam.ca] · 
> Supervision : [Mokadden Chihab] — [mokaddem.chihab@uqam.ca] · 

---

## Déroulement en 3 temps

| Quand | Quoi | Durée | Documents |
|---|---|---|---|
| **1. Avant la séance** (chez vous) | Lire l'information et le consentement, installer l'application, installer Ollama et les 3 modèles, faire les 3 premières étapes de l'assistant de démarrage | 5 à 10 min (surtout du téléchargement) | [Avant de commencer](docs/00-avant-de-commencer.md) · [Installer](docs/01-installer.md) · **[Vidéo d'installation](docs/video/installation.mp4)** · [Ollama et modèles](docs/02-ollama-et-modeles.md) · [Premier démarrage](docs/03-premier-demarrage.md) |
| **2. Pendant la séance** (avec un membre de l'équipe) | Créer votre espace, connecter vos sites, poser des questions, remplir les questionnaires | 10 à 15 min | Fiches remises pendant la séance : [fiches de tâches](test/fiches-taches.md), [aide-mémoire](test/aide-memoire.md) · Réponses : [formulaire en ligne](https://forms.cloud.microsoft/r/T62wfEBdgc) |
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
| Windows 10 / 11 (64 bits) | `Private Brain_<version>_x64-setup.exe` |
| macOS (Apple Silicon : M1, M2, M3, M4) | `Private Brain_<version>_aarch64.dmg` |
| macOS (Intel) | `Private Brain_<version>_x64.dmg` |
| Linux (Ubuntu 22.04 ou équivalent) | `Private Brain_<version>_amd64.AppImage` ou `.deb` |

Le fichier `SHA256SUMS.txt` permet de vérifier que le téléchargement n'a pas été altéré (voir
[Installer](docs/01-installer.md#vérifier-le-téléchargement-facultatif)).

**Configuration minimale** : 8 Go de mémoire (16 Go recommandés), environ **12 Go d'espace
disque libre** (application ≈ 1 Go, les 3 modèles ≈ 8 Go), connexion Internet pour l'installation
et la synchronisation.

---

## Guides de référence

À consulter **après** la séance, ou si l'expérimentateur vous le propose.

1. [Avant de commencer](docs/00-avant-de-commencer.md) — prérequis, ce qui reste sur votre ordinateur
2. [Installer l'application](docs/01-installer.md) — Windows, macOS, Linux · **[vidéo Windows](docs/video/installation.mp4)**
3. [Installer Ollama et les modèles](docs/02-ollama-et-modeles.md)
4. [Premier démarrage](docs/03-premier-demarrage.md) — l'assistant de démarrage
5. [Créer un espace et connecter vos sites](docs/04-espace-et-sites.md) — connexion pas à pas à
   [Moodle](docs/04-espace-et-sites.md#étape-2--connecter-moodle-uqam) et
   [Mon Portail](docs/04-espace-et-sites.md#étape-3--ajouter-mon-portail-dans-le-même-espace)
   (Microsoft UQAM, double authentification)
6. [Poser des questions](docs/05-poser-des-questions.md) — sources, modèles, langues
7. [Après le test](docs/06-apres-le-test.md) — effacer vos données, désinstaller
8. [Dépannage](docs/depannage.md)

## Formulaire de réponses

**Répondez aux questionnaires ici : [Formulaire Microsoft Forms](https://forms.cloud.microsoft/r/T62wfEBdgc)**

Le formulaire contient toutes les questions (profil, facilité d'utilisation, fonctionnalités,
confidentialité). Indiquez votre **code participant** (ex. `P07`), jamais votre nom. L'entretien
final se fait à l'oral.

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
