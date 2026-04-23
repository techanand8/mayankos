[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतమ్](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)

**註：如果此翻譯中存在語言錯誤，請原諒；我以您的語言提供它是為了讓您能更好地理解文檔和項目。為了技術上的精確，請參考英文或西班牙文版本。**

<div align="center">

## MayankOS 🟰 最佳 ❄️ NixOS 設定

\*\* 更新日期：2026年4月22日

MayankOS 是一種強大且優雅的方式，可以在任何系統上重現我的 NixOS 設定。它基於 **ZaneyOS** 項目的靈活性和靈感構建，提供了一個高度定制的環境，包括壁紙、腳本、應用程序和優化的硬件支持。

## ⚡ 專業 VLSI 與硬件工程工作站

MayankOS 專為 **VLSI 和硬件工程** 設計，是一個高性能的專業工作站。

- **為什麼它是完美的**：它預裝了全面的工具套件：
  - **HDL 仿真**：`ghdl`, `iverilog`, `verilator`, `gtkwave`, `gaw`, `surfer`.
  - **綜合與物理設計**：`yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`. (支持 OpenLane)
  - **形式驗證**：`cocotb`, `sby`, `bitwuzla`, `cvc4`, `z3`.
  - **PDKs 支持**：通過 `volare` 完整支持 **SkyWater 130** 和 **GF180MCU**。
- **未來就緒**：這只是開始；計劃在未來的更新中加入更多專業的 VLSI 和 EDA 工具。

## 🚀 新功能與硬件支持 (v2.6.1)

此版本為現代硬件帶來了顯著的優化和支持：

### 💻 MSI Modern 14 C7M & AMD 7000 系列
- **優化的 AMD 7530U 性能**：充分利用 `amd-pstate-epp` 和 `auto-cpufreq`，在性能和電池壽命之間取得完美平衡。
- **電池健康管理**：通過 `msi-ec` 原生支持 **MSI 電池閾值**，通過將充電限制在 80% 來保護您的電池。
- **先進的功率縮放**：根據電源狀態在 `performance` 和 `powersave` 模式之間自動切換。
- **下一代圖形**：完整的 `amdgpu` 支持，預配置了 VA-API 硬件加速、ROCm 和 Vulkan 工具。

### 🎨 多樣的 Shell 體驗
通過在 `variables.nix` 中設置 `barChoice` 來選擇您喜歡的桌面體驗：
- **Noctalia**：一個現代且功能豐富的 Shell。
- **Caelestia**：一個優雅且輕量級的替代方案。
- **DMS (DankMaterialShell)**：受 Material Design 啟發的簡潔現代 Shell。
- **Waybar**：經典且高度可定制的狀態欄。

## ⚡ 專業 VLSI 與硬件工程工作站

MayankOS 專為 **VLSI 和硬件工程** 設計，是一個高性能的專業工作站。

- **為什麼它是完美的**：它預裝了全面的工具套件：
  - **HDL 仿真**：`ghdl`, `iverilog`, `verilator`, `gtkwave`, `gaw`, `surfer`.
  - **綜合與物理設計**：`yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`. (支持 OpenLane)
  - **形式驗證**：`cocotb`, `sby`, `bitwuzla`, `cvc4`, `z3`.
  - **PDKs 支持**：通過 `volare` 完整支持 **SkyWater 130** 和 **GF180MCU**。

### 學習手冊與指南

- Nix 初學者指南：[English](cheatsheets/nix-beginner-guide.md) | [Español](cheatsheets/nix-beginner-guide.es.md)
- Hyprland 定制指南：[English](cheatsheets/hyprland-customization-guide.md) | [Español](cheatsheets/hyprland-customization-guide.es.md)
- VLSI 與硬件工程指南：[English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

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