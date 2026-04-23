[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)

**ملاحظة: يرجى المعذرة على أي أخطاء لغوية في هذه الترجمة؛ لقد قدمتها بلغتك لتتمكن من فهم التوثيق والمشروع بشكل أفضل. من أجل الدقة التقنية، يرجى الرجوع إلى النسخة الإنجليزية أو الإسبانية.**

<div align="center">

## MayankOS 🟰 أفضل ❄️ إعدادات NixOS

\*\* تحديث: 22 أبريل 2026

MayankOS هي طريقة قوية وأنيقة لإعادة إنتاج إعدادات NixOS الخاصة بي على أي نظام. تم بناؤها بمرونة وإلهام من مشروع **ZaneyOS**، وهي توفر بيئة مخصصة للغاية تشمل الخلفيات، السكربتات، التطبيقات، ودعم الأجهزة المحسّن.

## ⚡ محطة عمل احترافية لهندسة VLSI والأجهزة

تم تصميم MayankOS خصيصاً لتكون محطة عمل عالية الأداء لهندسة **VLSI والأجهزة**.

- **لماذا هي مثالية**: تأتي محملة مسبقاً بمجموعة شاملة من الأدوات:
  - **محاكاة HDL**: `ghdl`, `iverilog`, `verilator`, `gtkwave`, `gaw`, `surfer`.
  - **التصميم الفيزيائي**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`. (جاهز لـ OpenLane)
  - **التحقق الرسمي**: `cocotb`, `sby`, `bitwuzla`, `cvc4`, `z3`.
  - **دعم PDKs**: دعم كامل لـ **SkyWater 130** و **GF180MCU** عبر `volare`.
- **جاهز للمستقبل**: هذه مجرد البداية؛ من المخطط إضافة المزيد من أدوات VLSI و EDA المتخصصة في التحديثات القادمة.

## 🚀 الميزات الجديدة ودعم الأجهزة (v2.6.1)

يوفر هذا الإصدار تحسينات كبيرة ودعماً للأجهزة الحديثة:

### 💻 MSI Modern 14 C7M وسلسلة AMD 7000
- **أداء AMD 7530U المحسّن**: استفادة كاملة من `amd-pstate-epp` و `auto-cpufreq` لتحقيق توازن مثالي بين الأداء وعمر البطارية.
- **إدارة صحة البطارية**: دعم أصلي لـ **MSI Battery Thresholds** عبر `msi-ec` لحماية البطارية عن طريق الحد من الشحن إلى 80%.
- **تسريع الرسومات**: دعم كامل لـ `amdgpu` مع تسريع العتاد VA-API، و ROCm، وأدوات Vulkan.

### 🎨 تجارب شل متنوعة
اختر تجربة سطح المكتب المفضلة لديك عبر ضبط `barChoice` في `variables.nix`:
- **Noctalia**: واجهة حديثة وغنية بالميزات.
- **Caelestia**: بديل أنيق وخفيف الوزن.
- **DMS (DankMaterialShell)**: واجهة مستوحاة من Material Design.
- **Waybar**: شريط الحالة الكلاسيكي القابل للتخصيص.

## ⚡ محطة عمل احترافية لهندسة VLSI والأجهزة

تم تصميم MayankOS خصيصاً لتكون محطة عمل عالية الأداء لهندسة **VLSI والأجهزة**.

- **لماذا هي مثالية**: تأتي محملة مسبقاً بمجموعة شاملة من الأدوات:
  - **محاكاة HDL**: `ghdl`, `iverilog`, `verilator`, `gtkwave`, `gaw`, `surfer`.
  - **التصميم الفيزيائي**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`. (جاهز لـ OpenLane)
  - **التحقق الرسمي**: `cocotb`, `sby`, `bitwuzla`, `cvc4`, `z3`.
  - **دعم PDKs**: دعم كامل لـ **SkyWater 130** و **GF180MCU** عبر `volare`.

### الأدلة والروابط

- دليل المبتدئين لـ Nix: [English](cheatsheets/nix-beginner-guide.md) | [Español](cheatsheets/nix-beginner-guide.es.md)
- دليل تخصيص Hyprland: [English](cheatsheets/hyprland-customization-guide.md) | [Español](cheatsheets/hyprland-customization-guide.es.md)
- دليل هندسة VLSI والأجهزة: [English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

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