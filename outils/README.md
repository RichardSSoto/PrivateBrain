# Fiche matérielle (facultative)

[← Accueil](../README.md)

Pour expliquer les temps de réponse, nous relevons, **avec votre accord**, les caractéristiques
de l'ordinateur et la vitesse du modèle local. Le relevé est **anonyme** : aucun nom
d'utilisateur, nom de machine ni adresse réseau.

| Ce qui est relevé | Pourquoi |
|---|---|
| Processeur, cœurs, mémoire totale et libre, carte graphique et sa mémoire, type de disque, espace libre | Ressources disponibles pour le modèle |
| Secteur / batterie, mode d'énergie, version du système | La batterie et le mode économie ralentissent fortement le modèle |
| Pour chacun des 3 modèles : temps de chargement, vitesse de génération, temps d'une réponse courte, répartition carte graphique / processeur | Mesure de vitesse indépendante de PT2026 |

## Windows

Ollama démarré, ordinateur **sur secteur**, dans PowerShell, depuis le dossier où vous avez
téléchargé le script :

```powershell
powershell -ExecutionPolicy Bypass -File .\study-hw-snapshot.ps1 -Code P07
```

Remplacez `P07` par votre code participant. Le script dure 1 à 3 minutes et crée
`hardware.csv` dans le dossier courant (3 lignes, une par modèle). Ouvrez-le pour le relire,
puis envoyez-le à l'équipe ou montrez-le à l'expérimentateur.

Options : `-SkipBenchmark` (matériel seulement, sans mesurer les modèles) ;
`-Out <chemin>` (autre fichier de sortie).

Le script ([study-hw-snapshot.ps1](study-hw-snapshot.ps1)) ne fait que lire des informations du
système et interroger Ollama sur `127.0.0.1` ; vous pouvez le lire avant de le lancer.

## macOS et Linux

Le script n'existe que pour Windows. L'expérimentateur remplira la fiche avec vous à partir de :

- **macOS** : menu  → **À propos de ce Mac** (puce, mémoire) ;
- **Linux** : `lscpu`, `free -h`, `lspci | grep -i vga` ;
- et, pour les deux, `ollama ps` juste après une question (colonne **PROCESSOR**).
