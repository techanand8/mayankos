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



## 📘 Come installare, usare e imparare

*In primo luogo, ci scusiamo sinceramente per eventuali errori in questa documentazione o se qualcosa è sembrato ripetitivo. Rispettiamo tutti gli utenti e le comunità, e il nostro unico obiettivo è fornire un ambiente umile e potente per imparare e creare.*

### 🛠️ Installazione passo dopo passo
1. **Clonare la repository:**
   ```bash
   git clone https://github.com/techanand8/mayankos.git ~/mayankos
   cd ~/mayankos
   ```
2. **Eseguire lo script di installazione:**
   ```bash
   ./install-mayankos.sh
   ```
3. **Seguire le istruzioni:** Lo script guiderà l'utente in modo sicuro.
4. **Riavviare** una volta completato con successo `nixos-rebuild`.

### 🎓 Cosa puoi imparare (Deep Work e DV)
Questo ambiente è una miniera d'oro per studenti e professionisti:
- **Design Verification (DV) Avanzata:** Padroneggia l'arte di testare e verificare chip complessi usando strumenti di livello mondiale come `slang`, `morty`, `cocotb` e `Renode`.
- **Progettazione del silicio (RTL-to-GDSII):** Scopri come vengono realizzati i chip fisici eseguendo flussi completi utilizzando LibreLane e OpenROAD.
- **Padronanza di NixOS:** Impara l'amministrazione di sistema riproducibile.

### 🖥️ Gestione degli ambienti desktop
Per impostazione predefinita, **KDE Plasma**, **Hyprland** e **Niri** sono tutti abilitati. Se desideri disabilitarne alcuno:
- **KDE Plasma:** Apri `modules/core/xserver.nix` e cambia `services.desktopManager.plasma6.enable = true;` in `false`.
- **Hyprland:** Apri `modules/core/packages.nix` e cambia `programs.hyprland.enable = true;` in `false`.
- **Niri:** Apri `hosts/<tuo-host>/variables.nix` e cambia `niriEnable = true;` in `false`.

Dopo aver apportato le modifiche, ricompila il tuo sistema:
```bash
sudo nixos-rebuild boot --flake ~/mayankos/#<tuo-profilo>
```

