[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md)

**सूचना: अस्मिन् अनुवादे कापि भाषात्रुटिः अस्ति चेत् क्षम्यताम्; मया एतत् भवतां भाषायां प्रदत्तं येन भवन्तः प्रलेखनं परियोजनां च सम्यक् अवगन्तुं शक्नुवन्ति। तांत्रिकशुद्धतायै कृपया आङ्ग्लभाषायाः अथवा स्पेनीभाषायाः संस्करणं पश्यन्तु।**

<div align="center">

## मयङ्क-ओएस् (MayankOS) 🟰 सर्वोत्तमाः ❄️ NixOS विन्यासाः

\*\* अद्यतनम्: २२ एप्रिल, २०२६

MayankOS कस्मिन्नपि तन्त्रे मम NixOS विन्यासस्य पुनरुत्पादनस्य एकः शक्तिशाली च परिष्कृतः मार्गः अस्ति। **ZaneyOS** परियोजनायाः नमनशीलतया प्रेरणया च निर्मितम्, एतत् चित्रपत्राणि (wallpapers), लिप्यांशाः (scripts), अनुप्रयोगाः, अनुकूलितं यन्त्रांश-समर्थनं च समाविष्टं सुसज्जितं वातावरणं प्रदाति।

## 🚀 नवीनाः विशेषाः यन्त्रांश-समर्थनं च (v2.6.1)

एतत् संस्करणं आधुनिक-यन्त्रांशेभ्यः महत्त्वपूर्णां कार्यक्षमतां समर्थनं च आनयति:

### 💻 MSI Modern 14 C7M तथा AMD 7000 श्रेणी
- **अनुकूलितं AMD 7530U प्रदर्शनम्**: शक्ति-बैटरी-जीवनयोः सन्तुलनाय `amd-pstate-epp` तथा `auto-cpufreq` इत्येतयोः पूर्णं उपयोगं करोति।
- **बैटरी-स्वास्थ्य-प्रबन्धनम्**: `msi-ec` माध्यमेन **MSI Battery Thresholds** इत्यस्य कृते मूलसमर्थनम्, विद्युत्-संयोजने सति शुल्कं ८०% पर्यन्तं सीमितं कृत्वा बैटरी-रक्षणं करोति।
- **प्रगत-शक्ति-मापनम् (Advanced Power Scaling)**: शक्ति-स्थित्याधारितं `performance` तथा `powersave` विधाद्वये स्वयमेव परिवर्तनम्।
- **परवर्ति-वंश-चित्राणि (Next-Gen Graphics)**: VA-API यन्त्रांश-त्वरणेन, ROCm तथा Vulkan उपकरणैः सह पूर्णं `amdgpu` समर्थनं पूर्वविन्यस्तम् अस्ति।

### 🎨 विविधाः कोश-अनुभवाः (Shell Experiences)
`variables.nix` मध्ये `barChoice` स्थापयित्वा स्वस्य प्रियं डेस्कटौप-अनुभवं चिनोतु:
- **Noctalia**: एकीकृत-तन्त्र-नियन्त्रणैः सह एकः आधुनिकः, बहुगुणसम्पन्नः कोशः।
- **Caelestia**: एका सुन्दरी लघुभारयुक्ता च विकल्पः।
- **DMS (DankMaterialShell)**: आधुनिक-दृश्याय मटेरियल-डिज़ाइन प्रेरितः कोशः।
- **Waybar**: शास्त्रीयः, अत्यधिकं अनुकूलनयोग्यः स्थिति-दण्डः (status bar)।

### 🔧 तन्त्र-संवर्धनानि
- **नवीनतमं लिनक्स-कर्नेल (Linux Kernel)**: उत्तम-यन्त्रांश-सङ्गतये इदानीं **7.x कर्नेल** पङ्क्तौ प्रचलति।
- **परिष्कृतं Niri समर्थनम्**: Niri स्क्रॉल-योग्य-टाइलिंग्-कम्पोजिटर कृते पूर्णं एकीकरणम्।
- **सुधारितं आभासीकरणम् (Virtualization)**: VMware तथा अन्य-आभासीकरण-मञ्चेभ्यः अनुकूलितं समर्थनम्।

## Noctalia विषये महत्त्वपूर्णा सूचना

> यदा भवान् प्रथमवारं प्रवेशं (login) करिष्यति, तदा चित्रपटः शून्यः भविष्यति, निर्गमनाय SUPER + SHIFT + C नुदतु।
> प्रवेशानन्तरं Noctalia आरप्स्यते।

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 अधिकाः स्क्रीनशॉट्स्</strong></summary>

### Waybar विषयाः (Themes)

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Noctalia कोश-एकीकरणम्

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### अतिरिक्ताः विशेषाः

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### यन्त्रांश-समर्थनम् (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### मार्गदर्शिकाः चीटशीट्स च

- Nix नवशिक्षार्थी-मार्गदर्शिका: [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Hyprland अनुकूलन-मार्गदर्शिका:
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)

#### 🍖 आवश्यकताः

- भवान् NixOS, संस्करणं 24.05+ इत्यत्र भवेत्।
- `mayankos` सञ्चिका (एषः कोशः) भवतः गृह-निर्देशिकायां (home directory) भवेत्।
- भवान् **UEFI** सह बूटिंग् कुर्वन् **GPT** विभाजनस्य उपयोगेन NixOS स्थापितवान् स्यात्।
- ** न्यूनतमं 500MB /boot विभाजनं आवश्यकम्। **
- Systemd-boot समर्थितं अस्ति।
- GRUB कृते अन्तर्जालस्य साहाय्यं स्वीकर्तव्यम्। ☺️
- भवतः होस्ट-विशिष्ट-सञ्चिकानां हस्तगतं सम्पादनम्।
- होस्ट सः विशिष्टः सङ्गणकः अस्ति यस्मिन् भवान् स्थापनां करोति।

#### 🎹 पाइपवायर (Pipewire) तथा सूचना-सूची-नियन्त्रणम्

- वयं लिनक्स-कृते नवीनतमस्य उत्तमस्य च श्रव्य-समाधानस्य उपयोगं कुर्मः। उपरि दण्डे उपलब्धे सूचना-केन्द्रे प्रसार-माध्यम-ध्वनि-नियन्त्रणं भविष्यति।

#### 🏇 अनुकूलित-कार्यप्रवाहः प्रगत-गवाक्ष-प्रबन्धनं च

- **Hyprland समर्थनम्**: अधिकायै सुन्दरतायै कार्यक्षमते च डिफ़ॉल्ट टाइलिंग्-गवाक्ष-प्रबन्धकः।
- **Niri समर्थनम्**: इदानीं Niri कृते पूर्णं समर्थनं अस्ति, यत् एकं स्क्रॉल-योग्य-टाइलिंग् Wayland कम्पोजिटर अस्ति। स्वस्य `variables.nix` मध्ये `niriEnable` माध्यमेन एतत् परिवर्तयतु।
- **KDE Plasma (वैकल्पिकम्)**: KDE Plasma 6 कृते समर्थनं उपलब्धं अस्ति किन्तु डिफ़ॉल्ट् रूपेण अक्षमं अस्ति।
- अत्र कोपि विशालः NeoVIM प्रकल्पः नास्ति, एकस्य अद्भुतस्य NeoVIM विन्यासस्य कृते `nixvim` उपयुज्यते। भाषा-समर्थनं पूर्वमेव योजितम् अस्ति।

#### 🖥️ बहु-होस्ट् तथा प्रयोक्तृ-विन्यासः

- भवान् विभिन्न-यन्त्राणां प्रयोक्तॄणां च कृते पृथक् पृथक् व्यवस्थाः निर्दिष्टुं शक्नोति।
- `modules/core/user.nix` सञ्चिकायां स्वप्रयोक्तृभ्यः सुलभतया अतिरिक्तानि सङ्कुलानि (packages) निर्दिशतु।
- बोधगम्या सञ्चिका-संरचना तथा सरलं किन्तु व्यापकं विन्यासम्।

#### 👼 समर्थन-केन्द्रितः एकः अद्भुतः समुदायः

- MayankOS इत्यस्य पूर्णः विचारः NixOS इत्येतत् सुलभं स्थानं निर्मातुं अस्ति।
- NixOS वस्तुतः एकः महान् समुदायः अस्ति यस्य भागं भवितुं भवान् इच्छिष्यति।
- बहवः धैर्यवन्तः जनाः ये भवतः साहाय्यार्थं स्वस्य अवकाश-समयं व्यययितुं प्रसन्नाः सन्ति, ते MayankOS चालयन्ति।
- कस्यापि साहाय्यार्थं Discord इत्यत्र सम्पर्कं कर्तुं शक्नुवन्ति।

#### 📦 सङ्कुलानि (Packages) कथं स्थापनीयानि?

- भवान् [Nix Packages](https://search.nixos.org/packages?) तथा [Options](https://search.nixos.org/options?) पृष्ठेषु सङ्कुलस्य नाम अन्वेष्टुं शक्नोति, अथवा विन्यास-बाधाः निवारयितुं विकल्पाः उपलब्धाः सन्ति वा इति द्रष्टुं शक्नोति।
- सङ्कुलं योजयितुं `modules/core/packages.nix` तथा `modules/core/user.nix` इत्यत्र अनुभागाः सन्ति। एकः तन्त्र-व्यापिने उपयोगाय, अपरः केवलं भवतः प्रयोक्तृ-वातावरणाय।

#### 🐧 डेस्कटौप-वातावरणस्य परिवर्तनम्

MayankOS बहुविधानां वातावरणानां समर्थनं करोति:
- **Hyprland**: डिफ़ॉल्ट् रूपेण सक्षमम्।
- **Niri**: स्वहोस्टस्य `variables.nix` मध्ये `niriEnable = true;` स्थापयित्वा एतत् सक्षमं करोतु।
- **KDE Plasma**: KDE Plasma सक्षमं कर्तुं `modules/core/xserver.nix` इत्यत्र गत्वा `services.desktopManager.plasma6.enable = true;` पङ्क्तिं तथा सम्बद्धं `environment.systemPackages` भागं च टिप्पणीमुक्तं (uncomment) करोतु।

#### 🙋 समस्याः / प्रश्नाः सन्ति वा?

- कृपया कोषे समस्यां (issue) उत्थापयितुं निस्संकोचं भवन्तु, कृपया शीर्षकस्य आरम्भे [feature request] इति लिखन्तु, धन्यवादः!
- शीघ्र-प्रतिक्रियायै [Discord](https://discord.gg/XhZmNTnhtp) इत्यत्र अपि अस्मान् सम्पर्कयन्तु।

# Hyprland कुञ्जी-बन्धनानि (Keybindings)

Hyprland कृते कुञ्जी-बन्धनानि अधः सुलभ-सन्दर्भार्थं स्वरूपितानि सन्ति। दक्षिण-स्तम्भः **Noctalia Shell** विशिष्टानि कुञ्जी-बन्धनानि दर्शयति (यदा `barChoice = "noctalia"` भवति तदैव उपलब्धम्)।

<table>
<tr>
<td width="50%">

## मानक-कुञ्जी-बन्धनानि

### अनुप्रयोग-प्रारम्भः

- `$modifier + Return` → `terminal` आरम्भः
- `$modifier + Tab` → `Quickshell Overview` परिवर्तनम् (जीवन्त-पूर्वेक्षणेन सह कार्यक्षेत्र-अवलोकनम्)
- `$modifier + K` → कुञ्जी-बन्धन-सूची
- `$modifier + Shift + W` → `web-search` उद्घाटयतु
- `$modifier + Alt + W` → `wallsetter` उद्घाटयतु
- `$modifier + Shift + N` → `swaync-client -rs` चालयतु
- `$modifier + W` → `Web Browser` आरम्भः
- `$modifier + Y` → `yazi` सह `kitty` उद्घाटयतु
- `$modifier + E` → `emopicker9000` उद्घाटयतु
- `$modifier + S` → चित्रं स्वीकरोतु (screenshot)
- `$modifier + Shift + D` → `Discord` उद्घाटयतु
- `$modifier + O` → `OBS Studio` आरम्भः
- `$modifier + Alt + C` → वर्ण-चयनकः (Color Picker)
- `$modifier + G` → `GIMP` उद्घाटयतु
- `$modifier + T` → `pypr` माध्यमेन टर्मिनल-परिवर्तनम्
- `$modifier + Alt + M` → `pavucontrol` उद्घाटयतु

### गवाक्ष-प्रबन्धनम् (Window Management)

- `$modifier + Q` → सक्रिय-गवाक्षस्य समाप्तिः
- `$modifier + P` → स्यूडो-टाइलिंग् परिवर्तनम्
- `$modifier + Shift + I` → विभाजन-विधा (split mode) परिवर्तनम्
- `$modifier + F` → पूर्ण-पटलं (fullscreen) परिवर्तनम्
- `$modifier + Shift + F` → प्लवमान-विधा (floating mode) परिवर्तनम्
- `$modifier + Alt + F` → सर्वान् गवाक्षान् प्लावयतु
- `$modifier + Shift + C` → Hyprland तः निर्गमनम्

### गवाक्ष-सञ्चालनम्

- `$modifier + Shift + ← / → / ↑ / ↓` → वाम/दक्षिण/उपरि/अधः चालयतु
- `$modifier + Shift + H / L / K / J` → वाम/दक्षिण/उपरि/अधः चालयतु
- `$modifier + Alt + ← / → / ↑ / ↓` → वाम/दक्षिण/उपरि/अधः विनिमयः

### ध्यान-सञ्चालनम् (Focus Movement)

- `$modifier + ← / → / ↑ / ↓` → ध्यानं वाम/दक्षिण/उपरि/अधः चालयतु
- `$modifier + H / L / K / J` → ध्यानं वाम/दक्षिण/उपरि/अधः चालयतु

### कार्यक्षेत्राणि (Workspaces)

- `$modifier + 1-10` → कार्यक्षेत्रं १-१० प्रति परिवर्तनम्
- `$modifier + Shift + Space` → गवाक्षं विशेष-कार्यक्षेत्रे चालयतु
- `$modifier + Space` → विशेष-कार्यक्षेत्र-परिवर्तनम्
- `$modifier + Shift + 1-10` → गवाक्षं कार्यक्षेत्रं १-१० प्रति चालयतु
- `$modifier + Control + → / ←` → कार्यक्षेत्रं अग्रे/पृष्ठतः परिवर्तनम्

### गवाक्ष-चक्रणम्

- `Alt + Tab` → अग्रिम-गवाक्षं प्रति चक्रणम् / सक्रियं उपरि आनयतु

</td>
<td width="50%">

## 🎨 Noctalia Shell कुञ्जी-बन्धनानि

_लभ्यते यदा `barChoice = "noctalia"` अस्ति `variables.nix` मध्ये_

- `$modifier + D` → प्रक्षेपिका-परिवर्तनम् (Launcher Toggle)
- `$modifier + Shift + Return` → प्रक्षेपिका-परिवर्तनम्
- `$modifier + M` → सूचना-सूची (Notifications Menu)
- `$modifier + V` → क्लिपबोर्ड-प्रबन्धकः
- `$modifier + Alt + P` → व्यवस्था-फलकम् (Settings Panel)
- `$modifier + Shift + ,` → व्यवस्था-फलकम्
- `$modifier + Alt + L` → पटलं पिदधातु (Lock Screen)
- `$modifier + Shift + Y` → चित्रपट-प्रबन्धकः
- `$modifier + X` → शक्ति-सूची (Power Menu)
- `$modifier + C` → नियन्त्रण-केन्द्रम्
- `$modifier + Ctrl + R` → पटल-अभिलेखकः (Screen Recorder)

### Rofi प्रक्षेपिका (Waybar Mode)

_लभ्यते यदा `barChoice = "waybar"` अस्ति `variables.nix` मध्ये_

- `$modifier + D` → Rofi प्रक्षेपिकायाः आरम्भः
- `$modifier + Shift + Return` → Rofi प्रक्षेपिकायाः आरम्भः

### अन्याः विशेषाः

- `$modifier + Shift + Return` (Waybar) → अनुप्रयोग-प्रक्षेपिका
- `$modifier + V` (Waybar) → `cliphist` माध्यमेन क्लिपबोर्ड-इतिहासः

</td>
</tr>
</table>

## स्थापना (Installation):

> **⚠️ महत्त्वपूर्णा सूचना:** एताः स्थापना-विधयः केवलं **नवीन-स्थापनानां कृते** सन्ति। यदि भवतः समीपे पूर्वमेव MayankOS अस्ति तथा च v2.4 प्रति प्रगतं कर्तु इच्छति, तर्हि अधः [Upgrade Instructions](#upgrading-from-mayankos-23-to-24) पश्यतु। ध्यानं ददातु: अपग्रेड-स्क्रिप्ट् मध्ये काचन समस्या अस्ति। सा तावत्पर्यन्तं निष्कासिता अस्ति।

<details>
<summary><strong> ⬇️ लिप्यांशेन (script) सह स्थापयतु (केवलं नवीन-स्थापनानां कृते)</strong></summary>

### 📜 लिप्यांशः (Script):

**नवीन-स्थापनानां कृते** एषः सरलतमः अनुशंसितः च मार्गः अस्ति। एषः लिप्यांशः भवतः कृते Flake मध्ये सर्वान् विकल्पान् परिवर्तयितुं वा अतिरिक्तानि सङ्कुलानि स्थापयितुं साहाय्यं न करोति। एतत् केवलं मम विन्यासस्य न्यूनातिन्यून-विच्छेद-सम्भावनया स्थापनाय अस्ति!

> **⚠️ चेतावनी:** एषः लिप्यांशः वर्तमानं ~/mayankos निर्देशिकां पूर्णतया परिवर्तयिष्यति। यदि भवतः समीपे पूर्वमेव MayankOS स्थापितं विन्यस्तं च अस्ति तर्हि एतस्य उपयोगं मा करोतु।

केवलं एतत् प्रतिलिपिं कृत्वा चालयतु:

```bash
nix-shell -p git curl pciutils
```

ततः:

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### स्थापना-समाप्त्यनन्तरं भवतः वातावरणं विच्छिन्नं इव दृश्येत। केवलं पुनः आरम्भं (reboot) करोतु, ततः भवान् प्रवेश-पटलं (login screen) द्रक्ष्यति।

</details>

<details>
<summary><strong> 🦽 हस्तगता स्थापना-प्रक्रिया:  </strong></summary>

१. Git तथा Vim स्थापितं अस्ति इति सुनिश्चित्य एतत् आदेशं चालयतु:

```bash
nix-shell -p git vim
```

२. एतं कोशं क्लोन् करोतु तत्र प्रविशतु च:

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

३. स्वयन्त्रस्य कृते होस्ट-पुटं (host folder) एवं निर्मार्तु:

```bash
cp -r hosts/default hosts/<your-desired-hostname>
```

४. स्वकीयं यन्त्रांश-विन्यासं जनयतु:

```bash
nixos-generate-config --show-hardware-config > hosts/<your-desired-hostname>/hardware.nix
```

५. स्वस्य होस्ट-नाम-प्रोफाइल-अनुगुणं `hosts/<your-desired-hostname>/variables.nix` तथा `flake.nix` सम्पादयतु।

६. Flake स्थापयतु (`profile` इत्यस्य स्थाने `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid`, अथवा `vm` इति लिखतु):

```bash
sudo nixos-rebuild switch --flake .#profile
```

इदानीं यदा भवान् विन्यासस्य पुनः निर्माणं कर्तुं इच्छति, तदा `mcli rebuild` आदेशस्य अथवा `fr` उपनामस्य उपयोगं कर्तुं शक्नोति।

</details>

### विशेष-मान्यताः:

भवतः सर्व-साहाय्यार्थं धन्यवादः

- KoolDots https://github.com/LinuxBeginnings
- JakKoolit https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## आशासे भवान् आनन्दं प्राप्स्यति!
