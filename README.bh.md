[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतమ్](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)

**सूचना: एह अनुवाद में अगर कौनों भाषाई गलती होखे त क्षमा करीं; हम ई राउर भाषा में देले बानी ताकि रउआ दस्तावेज़ आ प्रोजेक्ट के बेहतर ढंग से समझ सकीं। तकनीकी शुद्धता खातिर, कृपया अंग्रेजी भा स्पेनिश संस्करण देखीं।**

<div align="center">

## MayankOS 🟰 सबसे नीक ❄️ NixOS Configs

\*\* अपडेट: 22 अप्रैल, 2026

MayankOS राउर कौनों भी सिस्टम पर हमार NixOS कॉन्फ़िगरेशन के दोबारा बनावे के एगो ताकतवर आ सुंदर तरीका ह। ई **ZaneyOS** प्रोजेक्ट के लचीलापन आ प्रेरणा से बनल बा, आ ई राउर सिस्टम के वॉलपेपर, स्क्रिप्ट, एप्लिकेशन आ बेहतर हार्डवेयर सपोर्ट के साथे एगो कस्टमाइज्ड माहौल देला।

## 🚀 नया फीचर आ हार्डवेयर सपोर्ट (v2.6.1)

एह वर्जन में आधुनिक हार्डवेयर खातिर बहुत सुधार आ सपोर्ट बा:

### 💻 MSI Modern 14 C7M आ AMD 7000 Series
- **बेहतर AMD 7530U परफॉर्मेंस**: पावर आ बैटरी लाइफ के बीच सही तालमेल खातिर `amd-pstate-epp` आ `auto-cpufreq` के पूरा इस्तेमाल।
- **बैटरी हेल्थ मैनेजमेंट**: `msi-ec` के जरिए **MSI Battery Thresholds** के नेटिव सपोर्ट, जवन प्लग इन होखे पर चार्जिंग के 80% ले सीमित क के राउर बैटरी के बचावेला।
- **एडवांस्ड पावर स्केलिंग**: पावर के स्थिति के आधार पर `performance` आ `powersave` मोड के बीच अपने आप स्विचिंग।
- **नेक्स्ट-जेन ग्राफिक्स**: VA-API हार्डवेयर एक्सेलेरेशन, ROCm, आ Vulkan टूल्स के साथे पूरा `amdgpu` सपोर्ट।

### 🎨 अलग-अलग शेल अनुभव
`variables.nix` में `barChoice` सेट क के आपन पसंद के डेस्कटॉप अनुभव चुनीं:
- **Noctalia**: एगो आधुनिक आ फीचर से भरल शेल।
- **Caelestia**: एगो सुंदर आ हल्का विकल्प।
- **DMS (DankMaterialShell)**: मटेरियल-डिजाइन से प्रेरित एगो स्लीक शेल।
- **Waybar**: क्लासिक आ कस्टमाइज होखे वाला स्टेटस बार।

## ⚡ प्रोफेशनल VLSI आ हार्डवेयर इंजीनियरिंग वर्कस्टेशन

MayankOS खास तौर पर **VLSI आ हार्डवेयर इंजीनियरिंग** खातिर एगो हाई-परफॉर्मेंस वर्कस्टेशन होखे खातिर डिजाइन कइल गइल बा।

- **ई काहे बेस्ट बा**: एहमें कई गो प्रोफेशनल टूल्स पहिले से सेट बा:
  - **HDL सिमुलेशन**: `ghdl`, `iverilog`, `verilator`, `gtkwave`, `gaw`, `surfer`.
  - **सिंथेसिस आ फिजिकल डिजाइन**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`. (OpenLane तैयार बा)
  - **वेरिफिकेशन आ फॉर्मल**: `cocotb`, `sby`, `bitwuzla`, `cvc4`, `z3`.
  - **PDKs**: `volare` के जरिए **SkyWater 130** आ **GF180MCU** के पूरा सपोर्ट।
- **भविष्य खातिर तैयार**: ई त बस शुरुआत ह; हार्डवेयर डिजाइनर्स खातिर MayankOS के अल्टीमेट प्लेटफॉर्म बनावे खातिर भविष्य के अपडेट में अउरी खास VLSI आ EDA टूल्स के योजना बा।

### चीटशीट आ गाइड

- Nix शुरुआती गाइड: [English](cheatsheets/nix-beginner-guide.md) | [Español](cheatsheets/nix-beginner-guide.es.md)
- Hyprland कस्टमाइजेशन गाइड: [English](cheatsheets/hyprland-customization-guide.md) | [Español](cheatsheets/hyprland-customization-guide.es.md)
- VLSI आ हार्डवेयर इंजीनियरिंग गाइड: [English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

#### 🍖 जरूरत

- राउर सिस्टम NixOS (वर्जन 24.05+) पर होखे के चाहीं।
- `mayankos` फोल्डर राउर होम डायरेक्टरी में होखे के चाहीं।
- NixOS के **GPT** पार्टीशन आ **UEFI** के साथे इंस्टॉल कइल जरूरी बा।

</div>



## 📘 इंस्टॉल, उपयोग और सीखे के तरीका

*सबसे पहिले, हम एह दस्तावेज़ में कवनो गलती खातिर भा अगर कुछ भी दोहरावल गइल होखे, ओकरा खातिर दिल से माफी मांगत बानी जा। हमनी के सभे के इज्जत करेनी जा आ हमनी के मकसद राउर सीखे खातिर नीमन माहौल दिहल बा।*

### 🛠️ इंस्टॉल करे के तरीका
1. **रिपॉजिटरी क्लोन करीं:**
   ```bash
   git clone https://github.com/techanand8/mayankos.git ~/mayankos
   cd ~/mayankos
   ```
2. **इंस्टॉलर स्क्रिप्ट चलाईं:**
   ```bash
   ./install-mayankos.sh
   ```
3. **निर्देश के पालन करीं।**
4. `nixos-rebuild` खतम भइला पर **रिबूट करीं**।

### 🎓 रउवा का सीख सकत बानी (Deep Work और DV)
- **Advanced Design Verification (DV):** `slang`, `morty`, `cocotb` और `Renode` जइसन टूल के इस्तेमाल से चिप टेस्ट करे के सीखीं।
- **Silicon Design (RTL-to-GDSII):** LibreLane और OpenROAD से असली चिप बनावल सीखीं।
- **NixOS Mastery:** सिस्टम एडमिनिस्ट्रेशन सीखीं।

### 🖥️ डेस्कटॉप वातावरण मैनेज कइल
डिफ़ॉल्ट रूप से, **KDE Plasma**, **Hyprland**, आ **Niri** चालू बा। अगर केहू के बंद करे के बा:
- **KDE Plasma:** `modules/core/xserver.nix` खोलीं और `services.desktopManager.plasma6.enable = true;` के `false` करीं।
- **Hyprland:** `modules/core/packages.nix` खोलीं और `programs.hyprland.enable = true;` के `false` करीं।
- **Niri:** `hosts/<your-host>/variables.nix` खोलीं और `niriEnable = true;` के `false` करीं।

बदलाव के बाद:
```bash
sudo nixos-rebuild boot --flake ~/mayankos/#<your-profile>
```

