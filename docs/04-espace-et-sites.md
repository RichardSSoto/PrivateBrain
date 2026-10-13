# 4. Créer un espace et connecter vos sites

[← Premier démarrage](03-premier-demarrage.md) · Suivant : [Poser des questions →](05-poser-des-questions.md)

> **Participants à l'étude : ne lisez pas ce guide avant la séance.** Créer l'espace et connecter
> vos sites sont des tâches du test : nous observons si l'application se comprend sans
> explication. Ce guide sert de référence après la séance, ou si l'expérimentateur vous y renvoie.

## Les notions

- Un **espace** regroupe des sites et des discussions sur un même thème (ex. « Mes études »).
- Une **connexion** est un site relié à l'espace : Moodle, Mon Portail ou un autre site. Version
  gratuite : **2 sites par espace** (le compteur `1/2 · 2/2` s'affiche à côté de « Connexion de
  l'espace »).
- Une **discussion** appartient à l'espace et interroge **tous ses sites à la fois** : inutile
  de créer une discussion par site.
- La **synchronisation** télécharge les pages et documents de vos sites et les indexe sur votre
  ordinateur. Les réponses ne portent que sur ce qui a été synchronisé.

## Étape 1 — Créer l'espace

1. Dans la barre de gauche, cliquez sur **+** (**Nouvel espace**).
2. Donnez-lui un nom (ex. « UQAM ») et validez.

L'espace apparaît dans la barre de gauche. Pour le renommer ou le supprimer plus tard : clic sur
l'espace → **Renommer** / **Supprimer l'espace**.

## Comment se passe la connexion UQAM (à lire une fois)

Moodle et Mon Portail utilisent la connexion **Microsoft de l'UQAM** (la même que pour Outlook ou
Teams UQAM), avec double authentification. PT2026 ne voit jamais votre mot de passe UQAM : vous
le tapez vous-même dans une **fenêtre de connexion ouverte par PT2026**.

Deux fenêtres travaillent ensemble :

| Fenêtre | Ce que vous y faites |
|---|---|
| **Fenêtre de connexion** (un navigateur ouvert par PT2026, sans vos favoris) | Vous vous connectez à Moodle ou Mon Portail comme d'habitude |
| **Fenêtre principale de PT2026** (panneau de synchronisation de l'espace) | Vous cliquez sur **Continuer — je suis connecté** quand la connexion est terminée |

Ce n'est **pas** votre Chrome ou Edge habituel : c'est normal. Votre session reste dans
l'application, pour les prochaines synchronisations.

Ayez sous la main :

- votre **identifiant Microsoft UQAM** (votre adresse courriel UQAM, celle de Outlook / Teams) et
  son mot de passe ;
- votre **téléphone** pour la double authentification (application Microsoft Authenticator,
  texto ou appel, selon ce que vous utilisez d'habitude).

## Étape 2 — Connecter Moodle UQAM

**A. Créer la connexion dans PT2026**

1. Dans l'espace, cliquez sur **+ Connecter un compte**.
2. Écran **« Quel compte veux-tu connecter ? »** (étape 1 sur 3) : cliquez sur la carte
   **Moodle**.
3. Écran **« Connexion à Moodle »** (étape 2 sur 3), remplissez :

   | Champ | Valeur |
   |---|---|
   | **Nom affiché** | `Moodle UQAM` |
   | **URL de connexion du site** | `https://moodle.uqam.ca` |
   | **Comment te connectes-tu ?** | **SSO Microsoft / campus (fenêtre PT2026)** |
   | **Lancer l'extraction juste après l'enregistrement** | Laissez **coché** |

   Ne choisissez pas « Identifiant et mot de passe » : l'UQAM passe par Microsoft, ce mode
   échouerait.
4. Lisez les conditions **« Connecter Moodle UQAM »**, cochez **« Ce compte est le mien et j'ai
   le droit d'en automatiser l'accès… »**, puis cliquez sur **J'accepte**.
5. Écran **« Contexte du canal (optionnel) »** (étape 3 sur 3) : cliquez sur **Ignorer pour
   l'instant** (vous pourrez le remplir plus tard).

**B. Se connecter dans la fenêtre de connexion**

6. Le panneau de synchronisation affiche **« En attente de la fenêtre de connexion PT2026 »** et
   une **fenêtre de connexion** s'ouvre (si elle n'apparaît pas, regardez dans la barre des
   tâches : elle peut être derrière).
7. Si la page d'accueil de Moodle s'affiche au lieu de la page Microsoft, cliquez sur
   **Connexion** (en haut à droite), puis sur le bouton de connexion **UQAM / Microsoft**.
8. Page **Microsoft « Se connecter »** : tapez votre **adresse courriel UQAM**, puis
   **Suivant**.
9. Tapez votre **mot de passe**, puis **Se connecter**.
10. **Double authentification** : approuvez la demande sur votre téléphone (ou tapez le code
    reçu).
11. Si Microsoft demande **« Rester connecté ? »**, répondez **Oui** : la prochaine
    synchronisation ne vous redemandera pas de vous connecter.
12. Attendez que votre **Tableau de bord** ou **Mes cours** de Moodle s'affiche dans la fenêtre
    de connexion. Ne fermez pas cette fenêtre.

**C. Confirmer dans PT2026**

13. Revenez à la **fenêtre principale de PT2026** et cliquez sur **Continuer — je suis
    connecté** (dans le panneau de synchronisation).
14. Le panneau affiche **« Session capturée — l'extraction commence »**, puis
    **« Extraction des pages »** avec un pourcentage. Ne fermez pas la fenêtre de connexion
    tant que la synchronisation n'est pas terminée ; PT2026 s'en sert pour lire vos cours.

La synchronisation de Moodle prend en général **5 à 15 minutes**. Vous pouvez continuer avec
Mon Portail pendant ce temps.

## Étape 3 — Ajouter Mon Portail dans le même espace

**A. Créer la connexion dans PT2026**

1. Dans le **même espace**, cliquez sur **+ Ajouter Mon Portail (même espace)**.
2. Écran **« Connexion à Mon Portail »** : l'URL est déjà remplie.

   | Champ | Valeur |
   |---|---|
   | **Nom affiché** | `Mon Portail` |
   | **URL de connexion du site** | `https://monportail.uqam.ca` (déjà rempli) |
   | **Comment te connectes-tu ?** | **SSO Microsoft / campus (fenêtre PT2026)** |
   | **Lancer l'extraction juste après l'enregistrement** | Laissez **coché** |

3. Cochez **« Ce compte est le mien… »**, puis **J'accepte**.
4. **Contexte du canal (optionnel)** : **Ignorer pour l'instant**.

**B. Se connecter dans la fenêtre de connexion**

5. Une nouvelle **fenêtre de connexion** s'ouvre sur Mon Portail.
6. Si vous avez répondu **Oui** à « Rester connecté ? » pour Moodle, Microsoft peut vous
   reconnaître directement ; sinon, refaites : **adresse courriel UQAM → mot de passe → double
   authentification**.
7. Attendez que l'**accueil de Mon Portail** (tableau de bord avec votre nom et vos tuiles)
   s'affiche.

**C. Confirmer dans PT2026**

8. Dans la fenêtre principale de PT2026, cliquez sur **Continuer — je suis connecté**.
9. La synchronisation de Mon Portail prend en général **quelques minutes** (moins que Moodle).

Le compteur à côté de « Connexion de l'espace » affiche maintenant **2/2**. Moodle et Mon
Portail **dans le même espace** permettent les questions qui croisent les deux (ex. « Qui est le
professeur de [SIGLE] et quelle note finale ai-je obtenue ? »).

## Si la connexion ne se passe pas comme prévu

| Situation | Que faire |
|---|---|
| La fenêtre de connexion n'apparaît pas | Regardez dans la barre des tâches (elle est peut-être derrière). Sinon, cliquez sur **Synchroniser** sur la connexion pour la rouvrir |
| Vous avez fermé la fenêtre de connexion par erreur | Cliquez sur **Synchroniser** : une nouvelle fenêtre s'ouvre |
| Vous avez cliqué sur **Continuer** trop tôt (avant le tableau de bord) | La synchronisation échoue ou reste vide : relancez **Synchroniser** et attendez le tableau de bord avant de cliquer |
| Microsoft affiche « Nous n'avons pas pu vous connecter » ou boucle | Fermez la fenêtre de connexion, attendez une minute, relancez **Synchroniser** |
| La demande de double authentification n'arrive pas | Dans la page Microsoft, choisissez **« Je ne peux pas utiliser mon application… »** ou **« Se connecter d'une autre façon »** (texto, appel) |
| « Ce compte est le mien » est grisé / bouton **J'accepte** inactif | Cochez la case d'abord : le bouton s'active ensuite |
| À une synchronisation suivante, la fenêtre se rouvre | Votre session a expiré (normal après quelques jours) : reconnectez-vous et cliquez sur **Continuer — je suis connecté** |
| Mot de passe UQAM oublié | Réinitialisez-le sur le site de l'UQAM, pas dans PT2026 |

**Pendant la séance de test**, l'expérimentateur regarde ailleurs pendant que vous tapez votre
mot de passe et votre code. Dites-lui quand c'est fait.

## Autre site (enseignants, employés)

**+ Connecter un compte** → **Autre site**, puis collez l'adresse et cliquez sur **Détecter** :
l'application reconnaît le type de site et propose le bon mode de connexion.

| Le site… | Mode de connexion |
|---|---|
| est public (pas de connexion) | **Page publique (sans connexion)** |
| a un formulaire identifiant / mot de passe simple | **Identifiant et mot de passe** (chiffré sur votre ordinateur) |
| utilise Microsoft, une double authentification ou une page complexe | **Se connecter dans une fenêtre PT2026** — puis **Continuer** |

Les banques et les portails gouvernementaux sont refusés, pour votre sécurité. L'application ne
fait que **lire** : elle ne remplit aucun formulaire et n'envoie aucun message.

## Étape 4 — Synchroniser

- La première synchronisation commence automatiquement. Pour la relancer : bouton
  **Synchroniser** de la connexion.
- Durée typique : 5 à 20 minutes par site, selon le nombre de cours et de documents.
- Vous pouvez poser des questions pendant la synchronisation, mais les réponses ne porteront que
  sur ce qui est déjà téléchargé.
- Si elle est interrompue, relancez **Synchroniser** : l'application reprend où elle s'était
  arrêtée.
- Si une fenêtre de connexion se rouvre (session expirée), reconnectez-vous puis **Continuer —
  je suis connecté**.

## Et après ?

Ouvrez une discussion et posez votre première question : [Poser des questions](05-poser-des-questions.md).
