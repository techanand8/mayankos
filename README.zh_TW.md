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



## 📘 如何安裝、使用和學習

*首先，如果本文件中存在任何錯誤或內容顯得重複，我們深表歉意。我們尊重所有用戶和社群，我們的唯一目標是為您提供一個謙遜且強大的學習和開發環境。*

### 🛠️ 逐步安裝
1. **克隆存儲庫:**
   ```bash
   git clone https://github.com/techanand8/mayankos.git ~/mayankos
   cd ~/mayankos
   ```
2. **執行安裝腳本:**
   ```bash
   ./install-mayankos.sh
   ```
3. **按照提示操作:** 該腳本將安全地引導您設置主機名、GPU 配置文件、時區和鍵盤佈局。它會為您自動配置一切！
4. **重啟:** 在 `nixos-rebuild` 成功完成後。

### 🎓 您能學到什麼 (Deep Work & DV)
這個環境對於學生和專業人士來說是一座金礦：
- **高級設計驗證 (DV):** 使用世界級的工具如 `slang`, `morty`, `cocotb` 和 `Renode` 掌握測試和驗證複雜晶片的藝術。
- **矽設計 (RTL到GDSII):** 學習如何使用 LibreLane 和 OpenROAD 執行完整流程來製造物理晶片。
- **NixOS 精通:** 學習可重複的系統管理和聲明式配置。

### 🖥️ 管理桌面環境
默認情況下，**KDE Plasma**, **Hyprland** 和 **Niri** 都已啟用以供您選擇。如果您想禁用其中任何一個：
- **KDE Plasma:** 打開 `modules/core/xserver.nix` 並將 `services.desktopManager.plasma6.enable = true;` 改為 `false`。
- **Hyprland:** 打開 `modules/core/packages.nix` 並將 `programs.hyprland.enable = true;` 改為 `false`。
- **Niri:** 打開 `hosts/<您的主機>/variables.nix` 並將 `niriEnable = true;` 改為 `false`。

進行更改後，只需使用以下命令重建您的系統：
```bash
sudo nixos-rebuild boot --flake ~/mayankos/#<您的配置文件>
```

