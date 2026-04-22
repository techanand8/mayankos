[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md)

**Remarque : Veuillez nous excuser pour toute erreur linguistique dans cette traduction ; je l'ai fournie dans votre langue afin que vous puissiez mieux comprendre la documentation et le projet. Pour plus de précision technique, veuillez vous référer aux versions anglaise ou espagnole.**

<div align="center">

## MayankOS 🟰 Meilleures Configs ❄️ NixOS

\*\* Mis à jour : 22 avril 2026

MayankOS est un moyen puissant et élégant de reproduire ma configuration NixOS sur n'importe quel système. Basé sur la flexibilité et l'inspiration du projet **ZaneyOS**, il fournit un environnement hautement personnalisé comprenant des fonds d'écran, des scripts, des applications et un support matériel optimisé.

## 🚀 Nouvelles fonctionnalités et support matériel (v2.6.1)

Cette version apporte des optimisations significatives et le support de matériels modernes :

### 💻 MSI Modern 14 C7M & Série AMD 7000
- **Performance AMD 7530U optimisée** : Utilise pleinement `amd-pstate-epp` et `auto-cpufreq` pour un équilibre parfait entre puissance et autonomie.
- **Gestion de la santé de la batterie** : Support natif des **seuils de batterie MSI** via `msi-ec`, protégeant votre batterie en limitant la charge à 80 % lorsqu'elle est branchée.
- **Mise à l'échelle avancée de la puissance** : Commutation automatique entre les modes `performance` et `powersave` en fonction de l'état de l'alimentation.
- **Graphismes de nouvelle génération** : Support complet d' `amdgpu` avec accélération matérielle VA-API, ROCm et outils Vulkan préconfigurés.

### 🎨 Expériences Shell diversifiées
Choisissez votre expérience de bureau préférée en réglant `barChoice` dans `variables.nix` :
- **Noctalia** : Un shell moderne et riche en fonctionnalités avec des contrôles système intégrés.
- **Caelestia** : Une alternative élégante et légère.
- **DMS (DankMaterialShell)** : Un shell inspiré du Material Design pour un look épuré et moderne.
- **Waybar** : La barre d'état classique et hautement personnalisable.

### 🔧 Améliorations du système
- **Dernier noyau Linux** : Fonctionne désormais sur la ligne du **noyau 7.x** pour la meilleure compatibilité matérielle.
- **Support Niri amélioré** : Intégration complète pour le compositeur de fenêtres à défilement Niri.
- **Virtualisation améliorée** : Support optimisé pour VMware et d'autres plateformes de virtualisation.

## 🤝 Relation avec ZaneyOS

MayankOS est un fier descendant du légendaire projet [ZaneyOS](https://gitlab.com/Zaney/zaneyos.git). Bien qu'il partage le même esprit de rendre NixOS accessible et beau, MayankOS a évolué vers une distribution distincte avec son propre objectif :

### 🌟 Qu'est-ce qui rend MayankOS différent ?
- **Focus sur le matériel moderne** : Contrairement à l'approche plus générale de ZaneyOS, MayankOS inclut des optimisations approfondies pour les derniers **AMD Ryzen série 7000** et les **ordinateurs portables MSI** (y compris la gestion de la santé de la batterie).
- **Écosystème de shells étendu** : Nous sommes allés au-delà de Waybar pour inclure un support complet pour **Noctalia**, **Caelestia** et **DMS**, vous offrant plus de choix pour votre flux de travail de bureau.
- **Stratégie du dernier noyau** : Nous priorisons `linuxPackages_latest` (7.x+) pour garantir que les dernières fonctionnalités matérielles fonctionnent immédiatement.
- **Options de compositeur étendues** : Nous avons intégré un support complet pour le **compositeur de tuilage défilant Niri**, offrant une alternative moderne à Hyprland pour les utilisateurs qui préfèrent un flux de travail de tuilage défilant.
- **Internationalisation améliorée** : Support de plus de 13 langues pour apporter l'expérience NixOS à un public mondial.

Si vous recherchez l'inspiration originale, veuillez visiter le [GitLab officiel de ZaneyOS](https://gitlab.com/Zaney/zaneyos.git). MayankOS s'appuie sur cette base incroyable et la pousse plus loin pour les utilisateurs qui ont besoin d'un support matériel de pointe et d'une gamme plus diversifiée de shells de bureau.

## 🏗️ Installation : Automatique vs Manuelle

MayankOS propose deux façons principales de commencer :
1. **Script automatique (recommandé pour les nouveaux utilisateurs)** : Une installation rapide en une seule commande qui gère tout pour vous. C'est le moyen le plus rapide d'obtenir un bureau fonctionnel.
2. **Installation manuelle** : Pour les utilisateurs qui souhaitent un contrôle total sur chaque aspect de leur système. L'installation manuelle est préférable si vous souhaitez personnaliser vos outils *avant* votre première reconstruction.

## ⚡ Station de travail professionnelle pour l'ingénierie VLSI et matérielle

MayankOS est spécifiquement conçu pour être une station de travail professionnelle haute performance pour **le VLSI et l'ingénierie matérielle**.

- **Pourquoi c'est parfait** : Il est pré-configuré avec une suite complète d'outils pour :
  - **Simulation HDL** : `iverilog`, `verilator`, `gtkwave`.
  - **Synthèse & Conception physique** : `yosys`, `magic-vlsi`, `klayout`, `openroad`.
  - **Développement FPGA & embarqué** : `nextpnr`, `icestorm`, `dfu-util`, `qemu`.
  - **Conception de PCB & schémas** : `kicad`, `ngspice`.
- **Comment personnaliser** : Si vous n'avez PAS besoin de ces outils, vous pouvez simplement commenter ou supprimer le bloc `# --- VLSI & Hardware Engineering ---` dans `modules/core/packages.nix` avant de lancer votre `nixos-rebuild`.
- **Prêt pour l'avenir** : Ce n'est que le début ; d'autres outils VLSI et EDA plus spécialisés sont prévus pour les prochaines mises à jour afin de faire de MayankOS la plateforme ultime pour les concepteurs de matériel.

+## 🌐 Choix et personnalisation du navigateur Web
+
+### Pourquoi Microsoft Edge ?
+
+Par défaut, MayankOS utilise désormais **Microsoft Edge**. Nous reconnaissons que la communauté Linux a de fortes préférences pour des navigateurs comme Firefox, Zen ou Brave. Cependant, Edge a été sélectionné pour cette station de travail car :
+- **Compatibilité** : Il offre une excellente stabilité avec les portails de documentation matérielle professionnelle et les outils EDA en ligne.
+- **Performance** : Il permet une gestion efficace des PDF et de la mémoire pour les recherches techniques intensives.
+- **Flux de travail** : Il s'aligne sur les besoins d'ingénierie spécifiques de cette station de travail VLSI.
+
+### Comment changer votre navigateur par défaut
+
+Si vous préférez un autre navigateur, MayankOS facilite le changement :
+1. **Modifier la variable** : Ouvrez le fichier `variables.nix` de votre hôte (ex: `hosts/msi-modern14c7m/variables.nix`) et remplacez la ligne `browser` par votre choix (ex: `browser = "firefox";`).
+2. **Vérifier l'installation** : Assurez-vous que votre navigateur préféré est listé dans `modules/core/packages.nix`. S'il n'y est pas, ajoutez simplement le nom de son paquet (ex: `librewolf`) à la liste.
+3. **Reconstruire** : Lancez `mcli rebuild` ou votre commande de reconstruction spécifique (ex: `sudo nixos-rebuild switch --flake .#amd`) pour appliquer le changement.
+
+Nous croyons au choix et à la liberté. MayankOS est conçu pour être votre station de travail personnelle — n'hésitez pas à vous l'approprier !
+
 ## 🛠️ Guide de configuration du matériel personnalisé et de l'hôte

 1. **Création d'un nouvel hôte** :

   - Copiez le dossier `hosts/default` dans un nouveau dossier nommé d'après votre ordinateur (par exemple, `cp -r hosts/default hosts/mon-ordinateur`).
2. **Génération de votre configuration matérielle** :
   - Exécutez `nixos-generate-config --show-hardware-config > hosts/votre-nom-d-hote/hardware.nix` pour détecter automatiquement votre matériel spécifique (disques, processeur, etc.).
3. **Sélection de votre profil** :
   - Ouvrez `flake.nix` et définissez la variable `profile` pour qu'elle corresponde à votre matériel (options : `amd`, `intel`, `nvidia`, `nvidia-laptop`, `amd-nvidia-hybrid` ou `vm`).
4. **Configuration des variables** :
   - Modifiez `hosts/votre-nom-d-hote/variables.nix` pour définir la résolution de votre écran, votre shell préféré (`barChoice`) et d'autres paramètres personnels.
5. **Support pour d'autres ordinateurs portables** :
   - Si vous avez un ordinateur portable spécialisé comme un MSI, vous pouvez consulter `hosts/msi-modern14c7m/default.nix` pour des exemples sur la façon d'ajouter des modules de noyau comme `msi-ec`.
6. **Reconstruction finale** :
   - Exécutez `sudo nixos-rebuild switch --flake .#votre-profil` pour tout appliquer.

## Note importante sur Noctalia

> Lors de votre première connexion, l'écran sera vide. Appuyez sur SUPER + SHIFT + C pour quitter.
> Connectez-vous, Noctalia démarrera à partir de ce moment-là.

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 Plus de captures d'écran</strong></summary>

### Thèmes Waybar

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Intégration du Shell Noctalia

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### Fonctionnalités supplémentaires

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### Support Matériel (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### Aide-mémoire et Guides

- Guide du débutant Nix : [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Guide de personnalisation Hyprland :
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)

#### 🍖 Prérequis

- Vous devez utiliser NixOS, version 24.05+.
- Le dossier `mayankos` (ce repo) doit se trouver dans votre répertoire personnel.
- Vous devez avoir installé NixOS en utilisant une partition **GPT** avec un démarrage **UEFI**.
- ** Partition /boot de 500 Mo minimum requise. **
- Systemd-boot est ce qui est supporté.
- Pour GRUB, vous devrez chercher un tutoriel sur Internet. ☺️
- Édition manuelle de vos fichiers spécifiques à l'hôte.
- L'hôte est l'ordinateur spécifique sur lequel vous effectuez l'installation.

#### 🎹 Pipewire & Contrôles du menu de notification

- Nous utilisons la solution audio la plus récente et la plus performante pour Linux. De plus, vous disposerez de contrôles multimédias et de volume dans le centre de notification disponible dans la barre supérieure.

#### 🏇 Flux de travail optimisé & Gestion avancée des fenêtres

- **Support Hyprland** : Gestionnaire de fenêtres mosaïque par défaut pour plus d'élégance et d'efficacité.
- **Support Niri** : Inclut désormais un support complet pour Niri, un compositeur Wayland à défilement. Activez-le via `niriEnable` dans votre `variables.nix`.
- **KDE Plasma (Optionnel)** : Le support de KDE Plasma 6 est disponible mais désactivé par défaut.
- Pas de projet NeoVIM massif ici, utilisation de `nixvim` pour une configuration NeoVIM incroyable avec support des langages déjà inclus.

#### 🖥️ Multi-hôte & Configuration utilisateur

- Vous pouvez définir des paramètres distincts pour différentes machines hôtes et utilisateurs.
- Spécifiez facilement des paquets supplémentaires pour vos utilisateurs dans le fichier `modules/core/user.nix`.
- Structure de fichiers facile à comprendre et configuration simple mais exhaustive.

#### 👼 Une communauté incroyable axée sur le support

- L'idée même de MayankOS est de faire de NixOS un espace accessible.
- NixOS est une communauté formidable dont vous voudrez faire partie.
- De nombreuses personnes patientes et heureuses d'aider sur leur temps libre utilisent MayankOS.
- N'hésitez pas à nous contacter sur Discord pour toute aide.

#### 📦 Comment installer des paquets ?

- Vous pouvez rechercher sur les pages [Nix Packages](https://search.nixos.org/packages?) & [Options](https://search.nixos.org/options?) le nom d'un paquet ou s'il dispose d'options facilitant sa configuration.
- Pour ajouter un paquet, il existe des sections à cet effet dans `modules/core/packages.nix` et `modules/core/user.nix`. L'une concerne les programmes disponibles au niveau du système et l'autre uniquement pour l'environnement de votre utilisateur.

#### 🐧 Changer d'environnement de bureau

MayankOS supporte plusieurs environnements :
- **Hyprland** : Activé par défaut.
- **Niri** : Activez-le en réglant `niriEnable = true;` dans le fichier `variables.nix` de votre hôte.
- **KDE Plasma** : Pour activer KDE Plasma, allez dans `modules/core/xserver.nix` et décommentez la ligne `services.desktopManager.plasma6.enable = true;` ainsi que le bloc `environment.systemPackages` associé.

#### 🙋 Des problèmes / questions ?

- N'hésitez pas à signaler un problème sur le repo. Veuillez étiqueter les demandes de fonctionnalités avec un titre commençant par [feature request], merci !
- Contactez-nous également sur [Discord](https://discord.gg/XhZmNTnhtp) pour une réponse potentiellement plus rapide.

# Raccourcis clavier Hyprland

Voici les raccourcis clavier pour Hyprland, formatés pour une référence facile. La colonne de droite affiche les raccourcis spécifiques au **Shell Noctalia** (uniquement disponibles quand `barChoice = "noctalia"`).

<table>
<tr>
<td width="50%">

## Raccourcis standard

### Lancement d'applications

- `$modifier + Return` → Lancer le `terminal`
- `$modifier + Tab` → Basculer l' `Aperçu Quickshell` (aperçu des espaces de travail avec prévisualisations en direct)
- `$modifier + K` → Lister les raccourcis clavier
- `$modifier + Shift + W` → Ouvrir `web-search`
- `$modifier + Alt + W` → Ouvrir `wallsetter`
- `$modifier + Shift + N` → Exécuter `swaync-client -rs`
- `$modifier + W` → Lancer le `Navigateur Web`
- `$modifier + Y` → Ouvrir `kitty` avec `yazi`
- `$modifier + E` → Ouvrir `emopicker9000`
- `$modifier + S` → Prendre une capture d'écran
- `$modifier + Shift + D` → Ouvrir `Discord`
- `$modifier + O` → Lancer `OBS Studio`
- `$modifier + Alt + C` → Pipette à couleurs
- `$modifier + G` → Ouvrir `GIMP`
- `$modifier + T` → Basculer le terminal avec `pypr`
- `$modifier + Alt + M` → Ouvrir `pavucontrol`

### Gestion des fenêtres

- `$modifier + Q` → Fermer la fenêtre active
- `$modifier + P` → Basculer le pseudo-tiling
- `$modifier + Shift + I` → Basculer le mode division (split)
- `$modifier + F` → Basculer le plein écran
- `$modifier + Shift + F` → Basculer le mode flottant
- `$modifier + Alt + F` → Faire flotter toutes les fenêtres
- `$modifier + Shift + C` → Quitter Hyprland

### Mouvement des fenêtres

- `$modifier + Shift + ← / → / ↑ / ↓` → Déplacer vers la gauche/droite/haut/bas
- `$modifier + Shift + H / L / K / J` → Déplacer vers la gauche/droite/haut/bas
- `$modifier + Alt + ← / → / ↑ / ↓` → Échanger vers la gauche/droite/haut/bas

### Mouvement du focus

- `$modifier + ← / → / ↑ / ↓` → Déplacer le focus vers la gauche/droite/haut/bas
- `$modifier + H / L / K / J` → Déplacer le focus vers la gauche/droite/haut/bas

### Espaces de travail

- `$modifier + 1-10` → Passer à l'espace de travail 1-10
- `$modifier + Shift + Space` → Déplacer la fenêtre vers l'espace de travail spécial
- `$modifier + Space` → Basculer vers l'espace de travail spécial
- `$modifier + Shift + 1-10` → Déplacer la fenêtre vers l'espace de travail 1-10
- `$modifier + Control + → / ←` → Changer d'espace de travail (suivant/précédent)

### Cycle des fenêtres

- `Alt + Tab` → Passer à la fenêtre suivante / Amener la fenêtre active au premier plan

</td>
<td width="50%">

## 🎨 Raccourcis Shell Noctalia

_Disponibles quand `barChoice = "noctalia"` dans `variables.nix`_

- `$modifier + D` → Basculer le lanceur
- `$modifier + Shift + Return` → Basculer le lanceur
- `$modifier + M` → Menu des notifications
- `$modifier + V` → Gestionnaire de presse-papiers
- `$modifier + Alt + P` → Panneau de configuration
- `$modifier + Shift + ,` → Panneau de configuration
- `$modifier + Alt + L` → Verrouiller l'écran
- `$modifier + Shift + Y` → Gestionnaire de fonds d'écran
- `$modifier + X` → Menu d'alimentation
- `$modifier + C` → Centre de contrôle
- `$modifier + Ctrl + R` → Enregistreur d'écran

### Lanceur Rofi (Mode Waybar)

_Disponible quand `barChoice = "waybar"` dans `variables.nix`_

- `$modifier + D` → Lancer le lanceur Rofi
- `$modifier + Shift + Return` → Lancer le lanceur Rofi

### Autres fonctionnalités

- `$modifier + Shift + Return` (Waybar) → Lanceur d'applications
- `$modifier + V` (Waybar) → Historique du presse-papiers via `cliphist`

</td>
</tr>
</table>

## Installation :

> **⚠️ IMPORTANT :** Ces méthodes d'installation sont destinées aux **NOUVELLES INSTALLATIONS UNIQUEMENT**. Si vous avez déjà installé MayankOS et que vous souhaitez passer à la v2.4, consultez les [Instructions de mise à niveau](#upgrading-from-mayankos-23-to-24) ci-dessous. Note : Il y a un problème avec le script de mise à niveau. Il a été retiré en attendant sa correction.

<details>
<summary><strong> ⬇️ Installation avec le script (NOUVELLES INSTALLATIONS UNIQUEMENT)</strong></summary>

### 📜 Script :

C'est le moyen le plus simple et recommandé pour commencer une **nouvelle installation**. Le script n'est pas censé vous permettre de changer chaque option dans le flake ou de vous aider à installer des paquets supplémentaires. Il est simplement là pour que vous puissiez installer ma configuration avec le moins de risques possible, puis bidouiller à votre guise !

> **⚠️ AVERTISSEMENT :** Ce script remplacera complètement tout répertoire ~/mayankos existant. Ne l'utilisez PAS si vous avez déjà installé et configuré MayankOS.

Copiez simplement ceci et exécutez-le :

```bash
nix-shell -p git curl pciutils
```

Puis :

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### Une fois l'installation terminée, votre environnement aura probablement l'air cassé. Redémarrez simplement et vous verrez l'écran de connexion.

</details>

<details>
<summary><strong> 🦽 Processus d'installation manuelle :  </strong></summary>

1. Exécutez cette commande pour vous assurer que Git & Vim sont installés :

```bash
nix-shell -p git vim
```

2. Clonez ce repo & entrez-y :

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

3. Créez le dossier hôte pour votre (vos) machine(s) comme ceci :

```bash
cp -r hosts/default hosts/<votre-nom-d-hote-souhaite>
```

4. Générez votre configuration matérielle :

```bash
nixos-generate-config --show-hardware-config > hosts/<votre-nom-d-hote-souhaite>/hardware.nix
```

5. Modifiez `hosts/<votre-nom-d-hote-souhaite>/variables.nix` et `flake.nix` pour correspondre à votre nom d'hôte et à votre profil.

6. Installez le flake (remplacez `profile` par `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid` ou `vm`) :

```bash
sudo nixos-rebuild switch --flake .#profile
```

Maintenant, quand vous voulez reconstruire la configuration, vous pouvez utiliser la commande `mcli rebuild` ou l'alias `fr`.

</details>

### Mentions spéciales :

Merci pour toute votre aide

- KoolDots https://github.com/LinuxBeginnings
- JakKoolit https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## En espérant que vous apprécierez !
