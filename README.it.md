[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतమ్](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)

**Nota: si prega di scusare eventuali errori linguistici in questa traduzione; l'ho fornita nella vostra lingua per permettervi di comprendere meglio la documentazione e il progetto. Per la precisione tecnica, consultare le versioni in inglese o spagnolo.**

<div align="center">

## MayankOS 🟰 Le migliori ❄️ configurazioni NixOS

\*\* Aggiornato: 22 aprile 2026

MayankOS è un modo potente ed elegante per riprodurre la mia configurazione NixOS su qualsiasi sistema. Basato sulla flessibilità e l'ispirazione del progetto **ZaneyOS**, fornisce un ambiente altamente personalizzato che include sfondi, script, applicazioni e supporto hardware ottimizzato.

## ⚡ Workstation professionale per l’ingegneria VLSI e hardware

MayankOS è progettata specificamente per essere una workstation ad alte prestazioni per l’**ingénieria VLSI e hardware**.

- **Perché è perfetta** : viene fornita pre-configurata con una suite completa di strumenti :
  - **Simulazione HDL** : `ghdl`, `iverilog`, `verilator`, `gtkwave`, `gaw`, `surfer`.
  - **Sintesi e Physical Design** : `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`. (Pronto per OpenLane)
  - **Verifica formale** : `cocotb`, `sby`, `bitwuzla`, `cvc4`, `z3`.
  - **Supporto PDK** : supporto completo per **SkyWater 130** e **GF180MCU** tramite `volare`.
- **Pronta per il futuro** : questo è solo l’inizio; altri strumenti VLSI e EDA specializzati sono previsti per i prossimi aggiornamenti.

## 🚀 Nuove funzionalità e supporto hardware (v2.6.1)

Questa versione introduce significative ottimizzazioni e supporto per l'hardware moderno:

### 💻 MSI Modern 14 C7M & Serie AMD 7000
- **Prestazioni AMD 7530U ottimizzate**: utilizza appieno `amd-pstate-epp` e `auto-cpufreq` per un equilibrio perfetto tra potenza e durata della batteria.
- **Gestione della salute della batteria**: supporto nativo per **MSI Battery Thresholds** tramite `msi-ec`, proteggendo la batteria limitando la ricarica all'80%.
- **Scaling avanzato della potenza**: commutazione automatica tra le modalità `performance` e `powersave` in base allo stato dell'alimentazione.
- **Grafica di nuova generazione**: supporto completo per `amdgpu` con accelerazione hardware VA-API, ROCm e strumenti Vulkan preconfigurati.

### 🎨 Diverse esperienze Shell
Scegli la tua esperienza desktop preferita impostando `barChoice` in `variables.nix`:
- **Noctalia**: Una shell moderna e ricca di funzionalità.
- **Caelestia**: Un'alternativa elegante e leggera.
- **DMS (DankMaterialShell)**: Una shell ispirata al Material Design per un look moderno.
- **Waybar**: La classica barra di stato altamente personalizzabile.

## ⚡ Workstation professionale per l'ingegneria VLSI e hardware

MayankOS è progettata specificamente per essere una workstation professionale ad alte prestazioni per l'ingegneria **VLSI e hardware**.

- **Perché è perfetta**: viene fornita preconfigurata con una suite completa di strumenti:
  - **Simulazione HDL**: `ghdl`, `iverilog`, `verilator`, `gtkwave`, `gaw`, `surfer`.
  - **Sintesi e Physical Design**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`. (Pronto per OpenLane)
  - **Verifica formale**: `cocotb`, `sby`, `bitwuzla`, `cvc4`, `z3`.
  - **Supporto PDK**: supporto completo per **SkyWater 130** e **GF180MCU** tramite `volare`.

### Cheat sheet e guide

- Guida per principianti Nix: [English](cheatsheets/nix-beginner-guide.md) | [Español](cheatsheets/nix-beginner-guide.es.md)
- Guida alla personalizzazione di Hyprland: [English](cheatsheets/hyprland-customization-guide.md) | [Español](cheatsheets/hyprland-customization-guide.es.md)
- Guida all'ingegneria VLSI e hardware: [English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

</div>





## ⚡ Professional VLSI & Hardware Capabilities

This environment is built to be a powerhouse for hardware engineering. You don't just get tools; you get a complete, integrated workflow.

### 🚀 What You Can Do
- **SoC & CPU Design:** Design complex RISC-V or ARM-based SoCs from scratch.
- **Advanced Verification (DV):** Use **slang**, **morty**, and **cocotb** to ensure your designs are bug-free with industrial-grade precision.
- **Full RTL-to-GDSII:** Go from code to a physical chip layout using **LibreLane** and **OpenROAD** (already integrated via advanced flakes).
- **Analog & Mixed-Signal:** Perform high-fidelity circuit simulations with **Ngspice** and **Xyce**, and design layouts with **Magic-VLSI**.
- **FPGA Prototyping:** Flash your designs to real hardware like Lattice iCE40 or ECP5 using `nextpnr` and `openfpgaloader`.
- **Embedded Software:** Develop firmware for your custom silicon with built-in RISC-V and ARM toolchains (`gcc-arm-embedded`, `spike`, `qemu`).
- **PCB Engineering:** Create professional multi-layer PCBs with **KiCad**.

### 🛠️ Advanced EDA & nix-eda
We have already integrated **nix-eda** and specialized flakes (like **LibreLane**) directly into the system. This means you have access to tools that are usually hard to install on standard Linux.
- To explore more OSD (Open Source Design) tools, you can use the `nix-shell -p` command with `inputs.nix-eda.packages.${pkgs.stdenv.hostPlatform.system}.<package-name>` or simply check our pre-configured `packages.nix`.

### ⌨️ Keybindings & Desktop Management
MayankOS offers three world-class environments. Use **Mod (Super/Windows key)** for most shortcuts:

#### **Hyprland & Niri (Common Binds)**
- **Mod + Return:** Open Terminal (Ghostty/Kitty)
- **Mod + D / Space:** App Launcher
- **Mod + Q:** Close Window
- **Mod + E / T:** File Manager (Thunar)
- **Mod + B / W:** Web Browser
- **Mod + 1-9:** Switch Workspaces
- **Mod + Shift + Q:** Session/Power Menu
- **Mod + Alt + K:** Show All Keybinds (Searchable)

#### **How to Toggle Environments**
By default, **KDE Plasma**, **Hyprland**, and **Niri** are all enabled for your convenience. If you want to disable any to save resources:
- **KDE Plasma:** In `modules/core/xserver.nix`, set `services.desktopManager.plasma6.enable = false;`.
- **Hyprland:** In `modules/core/packages.nix`, set `programs.hyprland.enable = false;`.
- **Niri:** In `hosts/<your-host>/variables.nix`, set `niriEnable = false;`.

### 📘 Humble Installation & Learning
*We sincerely apologize for any previous mistakes or repetitive language. We respect the community and aim only to provide a helpful tool.*

1. **Install:** `git clone https://github.com/techanand8/mayankos.git ~/mayankos` then `./install-mayankos.sh`.
2. **Rebuild:** Any time you change a setting, run `mcli rebuild` or `sudo nixos-rebuild boot --flake ~/mayankos/#<profile>`.