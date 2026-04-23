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



## 📘 كيفية التثبيت والاستخدام والتعلم

*أولاً وقبل كل شيء، نعتذر بصدق عن أي أخطاء في هذه الوثائق أو إذا شعرتم بأي تكرار. نحن نحترم جميع المستخدمين، وهدفنا الوحيد هو توفير بيئة متواضعة وقوية للتعلم والبناء.*

### 🛠️ التثبيت خطوة بخطوة
1. **استنساخ المستودع:**
   ```bash
   git clone https://github.com/techanand8/mayankos.git ~/mayankos
   cd ~/mayankos
   ```
2. **تشغيل برنامج التثبيت:**
   ```bash
   ./install-mayankos.sh
   ```
3. **اتبع التعليمات.**
4. **أعد التشغيل** بمجرد الانتهاء من البناء.

### 🎓 ما يمكنك تعلمه (التحقق من التصميم DV)
- **التحقق المتقدم من التصميم (DV):** إتقان اختبار الرقائق المعقدة باستخدام أدوات مثل `slang` و `morty` و `cocotb` و `Renode`.
- **تصميم السيليكون (RTL-to-GDSII):** تعرف على كيفية صنع الرقائق باستخدام LibreLane و OpenROAD.
- **إتقان NixOS:** تعلم إدارة النظام.

### 🖥️ إدارة بيئات سطح المكتب
بشكل افتراضي، يتم تمكين **KDE Plasma** و **Hyprland** و **Niri**. لتعطيل أي منها:
- **KDE Plasma:** افتح `modules/core/xserver.nix` وغيّر `services.desktopManager.plasma6.enable = true;` إلى `false`.
- **Hyprland:** افتح `modules/core/packages.nix` وغيّر `programs.hyprland.enable = true;` إلى `false`.
- **Niri:** افتح `hosts/<your-host>/variables.nix` وغيّر `niriEnable = true;` إلى `false`.

بعد إجراء التغييرات:
```bash
sudo nixos-rebuild boot --flake ~/mayankos/#<your-profile>
```

