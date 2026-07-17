# 🇫🇷 Traduction Française – *Beholder 2*
### Patch communautaire FR – version moderne, propre et non‑intrusive

## 📌 Présentation
Ce projet propose une **traduction française complète** de *Beholder 2*, réalisée à partir des fichiers originaux du jeu et retravaillée pour offrir une expérience fluide, cohérente et fidèle à l’ambiance dystopique de la série.

Contrairement aux anciennes traductions distribuées sous forme d’exécutables, cette version est :
- **100 % transparente** (fichiers texte uniquement)
- **sans .exe**
- **compatible Steam / GOG**
- **facile à installer et à mettre à jour**
- **ouverte à la contribution de la communauté**

---

## 🎯 Objectifs du projet
- Proposer une **traduction FR propre et moderne**, sans installeur opaque.
- Harmoniser le vocabulaire administratif, bureaucratique et dystopique.
- Corriger les incohérences, fautes, oublis et alignements présents dans les versions précédentes.
- Offrir une base claire pour les futures mises à jour ou améliorations communautaires.
- Permettre à chacun de **jouer à Beholder 2 en français**, simplement.

---

## 🛠️ Contenu du patch
- Traduction complète des **dialogues**
- Traduction des **menus**, **interfaces**, **messages système**
- Ajustements de **mise en page**, **alignements**, **espacements**
- Fichier `language.json` modernisé :
  - `Sre` ajouté
  - `BuiltIn` défini
  - GUID propre
  - Structure conforme aux standards Unity

---

## 📥 Installation
1. Télécharger le dossier `/French/` du dépôt.
2. Le placer dans :  
   `Beholder 2_Data/StreamingAssets/Languages/`
3. Lancer le jeu et sélectionner **Français** dans les options.

Aucune modification du jeu, aucun exécutable, aucun risque.

### 🪟 Script d’installation Windows (optionnel)

Pour simplifier l’installation sur Windows, un script PowerShell est fourni.  
Il copie automatiquement le dossier `/fr/` au bon endroit dans l’installation Steam ou GOG de *Beholder 2*.

Ce script est **entièrement facultatif**, transparent et modifiable.  
Il ne contient aucun exécutable et ne modifie rien en dehors du dossier de langue.

### Utilisation
1. Télécharger le dépôt.
2. Faire un clic droit sur `tools/install.ps1` → *Exécuter avec PowerShell*.
3. Suivre les instructions affichées.

Le script détecte automatiquement l’emplacement du jeu et installe la traduction dans `StreamingAssets/Localization/`.


---

## 🤝 Contributions
Ce projet est **ouvert à la communauté**.  
Vous pouvez contribuer en :
- corrigeant des tournures,
- améliorant la cohérence,
- signalant des erreurs,
- proposant des ajustements stylistiques,
- ouvrant des issues ou des pull requests.

👉 Pour participer : [ouvrir une contribution](ca://s?q=Ouvrir_une_contribution_Beholder_2_FR)

---

## 🧩 À propos des traductions existantes
Une traduction communautaire datant de 2023 existait sous forme d’exécutable.  
Cette version n’est **pas basée** sur ce fichier :
- les dialogues étant très littéraux, certaines phrases peuvent naturellement être identiques ;
- l’intégralité du patch a été **reconstruite proprement**, avec corrections, harmonisation et structure modernisée.

Par souci de transparence :

> Cette traduction FR est réalisée à partir des fichiers originaux du jeu.  
> Une ancienne traduction communautaire existait sous forme d’exécutable, mais cette version est entièrement retravaillée, corrigée et modernisée.

---

## 📚 Structure du dépôt
- `/fr/` – fichiers de traduction  
- `/tools/` – script d'installation des fichiers 
- `README.md` – Présentation du projet et instructions d'installation


---

## ❤️ Remerciements
Merci à la communauté francophone de *Beholder*, aux moddeurs, aux joueurs, et à toutes les personnes qui ont contribué à rendre le jeu plus accessible.

---

## 🔮 Prochaines étapes
- Amélioration du style dans certains dialogues