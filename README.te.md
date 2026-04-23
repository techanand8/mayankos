[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)
n**గమనిక: ఈ అనువాదంలో ఏవైనా భాషా పరమైన తప్పులు ఉంటే దయచేసి క్షమించండి; డాక్యుమెంటేషన్ మరియు ప్రాజెక్ట్‌ను మీరు బాగా అర్థం చేసుకోవడానికి నేను దీన్ని మీ భాషలో అందించాను. సాంకేతిక ఖచ్చితత్వం కోసం, దయచేసి ఇంగ్లీష్ లేదా స్పానిష్ వెర్షన్‌లను చూడండి.**

**గమనిక: ఈ అనువాదంలో ఏవైనా భాషా పరమైన తప్పులు ఉంటే దయచేసి క్షమించండి; మీరు డాక్యుమెంటేషన్ మరియు ప్రాజెక్ట్‌ను బాగా అర్థం చేసుకోవడానికి నేను దీనిని మీ భాషలో అందించాను. సాంకేతిక ఖచ్చితత్వం కోసం, దయచేసి ఇంగ్లీష్ లేదా స్పానిష్ వెర్షన్‌లను చూడండి.**

<div align="center">

## MayankOS 🟰 ఉత్తమ ❄️ NixOS కాన్ఫిగరేషన్‌లు

\*\* అప్‌డేట్ చేయబడింది: ఏప్రిల్ 22, 2026

MayankOS అనేది నా NixOS కాన్ఫిగరేషన్‌ను ఏ సిస్టమ్‌లోనైనా పునరుత్పత్తి చేయడానికి ఒక శక్తివంతమైన మరియు సొగసైన మార్గం. **ZaneyOS** ప్రాజెక్ట్ యొక్క సౌలభ్యం మరియు స్ఫూర్తితో నిర్మించబడిన ఇది వాల్‌పేపర్‌లు, స్క్రిప్ట్‌లు, అప్లికేషన్‌లు మరియు ఆప్టిమైజ్ చేయబడిన హార్డ్‌వేర్ సపోర్ట్‌తో సహా అత్యంత అనుకూలీకరించిన వాతావరణాన్ని అందిస్తుంది.

## 🚀 కొత్త ఫీచర్లు & హార్డ్‌వేర్ సపోర్ట్ (v2.6.1)

ఈ వెర్షన్ ఆధునిక హార్డ్‌వేర్ కోసం గణనీయమైన ఆప్టిమైజేషన్లు మరియు సపోర్ట్‌ను తెస్తుంది:

### 💻 MSI Modern 14 C7M & AMD 7000 సిరీస్
- **ఆప్టిమైజ్ చేయబడిన AMD 7530U పనితీరు**: పవర్ మరియు బ్యాటరీ లైఫ్ మధ్య సరైన బ్యాలెన్స్ కోసం `amd-pstate-epp` మరియు `auto-cpufreq`లను పూర్తిగా ఉపయోగించుకుంటుంది.
- **బ్యాటరీ హెల్త్ మేనేజ్‌మెంట్**: `msi-ec` ద్వారా **MSI బ్యాటరీ థ్రెషోల్డ్‌లకు** స్థానిక సపోర్ట్, ప్లగ్ ఇన్ చేసినప్పుడు ఛార్జింగ్‌ను 80%కి పరిమితం చేయడం ద్వారా మీ బ్యాటరీని రక్షిస్తుంది.
- **అడ్వాన్స్‌డ్ పవర్ స్కేలింగ్**: పవర్ స్థితి ఆధారంగా `performance` మరియు `powersave` మోడ్‌ల మధ్య ఆటోమేటిక్ స్విచింగ్.
- **నెక్స్ట్-జెన్ గ్రాఫిక్స్**: VA-API హార్డ్‌వేర్ యాక్సిలరేషన్, ROCm మరియు Vulkan టూల్స్‌తో పూర్తి `amdgpu` సపోర్ట్ ముందే కాన్ఫిగర్ చేయబడింది.

### 🎨 విభిన్న షెల్ అనుభవాలు
`variables.nix`లో `barChoice`ని సెట్ చేయడం ద్వారా మీకు నచ్చిన డెస్క్‌టాప్ అనుభవాన్ని ఎంచుకోండి:
- **Noctalia**: ఇంటిగ్రేటెడ్ సిస్టమ్ కంట్రోల్స్‌తో కూడిన ఆధునిక, ఫీచర్-రిచ్ షెల్.
- **Caelestia**: ఒక సొగసైన మరియు తేలికపాటి ప్రత్యామ్నాయం.
- **DMS (DankMaterialShell)**: సొగసైన, ఆధునిక లుక్ కోసం మెటీరియల్-డిజైన్ ప్రేరేపిత షెల్.
- **Waybar**: క్లాసిక్, అత్యంత అనుకూలీకరించదగిన స్టేటస్ బార్.

### 🔧 సిస్టమ్ మెరుగుదలలు
- **లేటెస్ట్ లైనక్స్ కెర్నల్**: ఉత్తమ హార్డ్‌వేర్ అనుకూలత కోసం ఇప్పుడు **7.x కెర్నల్** లైన్‌పై నడుస్తోంది.
- **మెరుగైన Niri సపోర్ట్**: Niri స్క్రోలబుల్-టైలింగ్ కంపోజిటర్ కోసం పూర్తి ఇంటిగ్రేషన్.
- **మెరుగైన వర్చువలైజేషన్**: VMware మరియు ఇతర వర్చువలైజేషన్ ప్లాట్‌ఫారమ్‌ల కోసం ఆప్టిమైజ్ చేయబడిన సపోర్ట్।

## 🤝 ZaneyOS తో సంబంధం

MayankOS పురాణ [ZaneyOS](https://gitlab.com/Zaney/zaneyos.git) ప్రాజెక్ట్ యొక్క గర్వించదగిన వారసుడు. NixOSని అందుబాటులోకి మరియు అందంగా మార్చాలనే అదే స్ఫూర్తిని పంచుకున్నప్పటికీ, ఇది తనదైన దృష్టితో ఒక ప్రత్యేక పంపిణీగా అభివృద్ధి చెందింది:

### 🌟 MayankOSని ఏది భిన్నంగా చేస్తుంది?
- **ఆధునిక హార్డ్‌వేర్ ఫోకస్**: ZaneyOS యొక్క మరింత సాధారణ విధానం వలె కాకుండా, MayankOS తాజా **AMD Ryzen 7000 సిరీస్** మరియు **MSI ల్యాప్‌టాప్‌ల** కోసం (బ్యాటరీ ఆరోగ్య నిర్వహణతో సహా) లోతైన ఆప్టిమైజేషన్‌లను కలిగి ఉంది.
- **విస్తరించిన షెల్ పర్యావరణ వ్యవస్థ**: మేము కేవలం Waybar కంటే మించి **Noctalia**, **Caelestia** మరియు **DMS** కోసం పూర్తి మద్దతును చేర్చాము, ఇది మీ డెస్క్‌టాప్ వర్క్‌ఫ్లో కోసం మీకు మరిన్ని ఎంపికలను ఇస్తుంది.
- **తాజా కెర్నల్ వ్యూహం**: సరికొత్త హార్డ్‌వేర్ ఫీచర్లు వెంటనే పని చేసేలా చూసేందుకు మేము `linuxPackages_latest` (7.x+)కి ప్రాధాన్యత ఇస్తాము.
- **విస్తరించిన కంపోజిటర్ ఎంపికలు**: మేము **Niri స్క్రోలబుల్-టైలింగ్ కంపోజిటర్** కోసం పూర్తి మద్దతును అందించాము, స్క్రోల్ చేయగల టైలింగ్ వర్క్‌ఫ్లోను ఇష్టపడే వినియోగదారుల కోసం Hyprland కు ఆధునిక ప్రత్యామ్నాయాన్ని అందిస్తున్నాము.
- **మెరుగైన అంతర్జాతీయీకరణ**: NixOS అనుభవం ప్రపంచవ్యాప్త ప్రేక్షకులకు అందించడానికి 13+ భాషలకు మద్దతు.

మీరు అసలు స్ఫూర్తి కోసం చూస్తున్నట్లయితే, దయచేసి [అధికారిక ZaneyOS GitLab](https://gitlab.com/Zaney/zaneyos.git)ని సందర్శించండి. ఈ పర్యావరణం ఆ అద్భుతమైన పునాదిని తీసుకుంటుంది మరియు అత్యాధునిక హార్డ్‌వేర్ మద్దతు మరియు మరింత వైవిధ్యమైన డెస్క్‌టాప్ షెల్స్ అవసరమయ్యే వినియోగదారుల కోసం దానిని మరింత ముందుకు తీసుకువెళుతుంది.

## 🏗️ ఇన్‌స్టాలేషన్: ఆటోమేటిక్ vs మాన్యువల్

ప్రారంభించడానికి రెండు ప్రాథమిక మార్గాలు అందించబడ్డాయి:
1. **ఆటోమేటిక్ స్క్రిప్ట్ (కొత్త వినియోగదారులకు సిఫార్సు చేయబడింది)**: మీ కోసం ప్రతిదీ నిర్వహించే వేగవంతమైన, వన్-కమాండ్ ఇన్‌స్టాల్. పని చేసే డెస్క్‌టాప్‌ను పొందడానికి ఇది వేగవంతమైన మార్గం.
2. **మాన్యువల్ ఇన్‌స్టాలేషన్**: తమ సిస్టమ్‌లోని ప్రతి అంశంపై పూర్తి నియంత్రణను కోరుకునే వినియోగదారుల కోసం. మీ మొదటి రీబిల్డ్‌కు *ముందే* మీ సాధనాలను అనుకూలీకరించాలనుకుంటే మాన్యువల్ ఇన్‌స్టాలేషన్ ఉత్తమం.

## ⚡ ప్రొఫెషనల్ VLSI & హార్డ్‌వేర్ ఇంజనీరింగ్ వర్క్‌స్టేషన్

MayankOS ప్రత్యేకంగా **VLSI మరియు హార్డ్‌వేర్ ఇంజనీరింగ్** కోసం అధిక-పనితీరు గల, ప్రొఫెషనల్ వర్క్‌స్టేషన్‌గా రూపొందించబడింది.

- **ఇది ఎందుకు పరిపూర్ణమైనది**: ఇది సమగ్ర సాధనాల సూట్‌తో ముందే కాన్ఫిగర్ చేయబడింది:
  - **HDL సిమ్యులేషన్**: `ghdl`, `nvc`, `iverilog`, `verilator`, `gtkwave`, `surfer`, `fusesoc`, `surelog`.
  - **సింథసిస్ & ఫిజికల్ డిజైన్**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`, `gdsfactory`. (OpenLane ready)
  - **FPGA & ఎంబెడెడ్ డెవలప్‌మెంట్**: `nextpnr`, `icestorm`, `openfpgaloader`, `dfu-util`, `qemu`.
  - **LSPs & టూల్‌కిట్లు**: `sv-lang`, `vhdl-ls`, `verible`, `veridian`, `svls`, `pyverilog`, `verilogae`, `volare`.
  - **PDKs**: `volare` ద్వారా **SkyWater 130** మరియు **GF180MCU** కోసం పూర్తి మద్దతు.
  - **PCB & స్కీమాటిక్ డిజైన్**: `kicad`, `ngspice`, `doxygen`.
- **FPGA Prototyping:** Flash your designs to real hardware like Lattice iCE40 or ECP5 using `nextpnr` and `openfpgaloader`.
- **Embedded Software:** Develop firmware for your custom silicon with built-in RISC-V and ARM toolchains (`gcc-arm-embedded`, `spike`, `qemu`).
- **అనుకూలీకరించడం ఎలా**: మీకు ఈ సాధనాలు అవసరం లేకుంటే, మీరు మీ `nixos-rebuild` రన్ చేయడానికి ముందు `modules/core/packages.nix` లోని `# --- VLSI & Hardware Engineering ---` బ్లాక్‌ను కామెంట్ అవుట్ చేయవచ్చు లేదా తీసివేయవచ్చు.
- **అడ్వాన్స్‌డ్ EDA (Advanced EDA)**: **OpenLane** లేదా ప్రామాణిక Nixpkgsలో ఇంకా లేని అధునాతన DFT సూట్‌ల వంటి సాధనాల కోసం, PDK అనుకూలతను నిర్ధారించడానికి మేము [nix-eda](https://github.com/nix-eda/nix-eda) ఓవర్‌లే లేదా Docker కంటైనర్‌లను ఉపయోగించమని సిఫార్సు చేస్తున్నాము.
- **భవిష్యత్తు కోసం సిద్ధంగా ఉంది**: ఇది కేవలం ప్రారంభం మాత్రమే; హార్డ్‌వేర్ డిజైనర్ల కోసం MayankOSను అంతిమ ప్లాట్‌ఫారమ్‌గా మార్చడానికి భవిష్యత్తు అప్‌డేట్‌లలో (బిల్ట్-ఇన్ OpenLane v2 సపోర్ట్‌తో సహా) మరిన్ని ప్రత్యేకమైన VLSI మరియు EDA సాధనాలు ప్లాన్ చేయబడ్డాయి.

## 🌐 వెబ్ బ్రౌజర్ ఎంపిక & అనుకూలీకరణ

### మైక్రోసాఫ្ត్ ఎడ్జ్ ఎందుకు?

డిఫాల్ట్‌గా, MayankOS ఇప్పుడు **Microsoft Edge**ని ఉపయోగిస్తుంది. లైనక్స్ కమ్యూనిటీకి ఫైర్‌ఫాక్స్, జెన్ లేదా బ్రేవ్ వంటి బ్రౌసర్‌ల పట్ల బలమైన ప్రాధాన్యతలు ఉన్నాయని మేము గుర్తిస్తున్నాము. అయితే, ఈ వర్క్‌స్టేషన్ కోసం ఎడ్జ్ ఎంపిక చేయబడింది ఎందుకంటే:
- **అనుకూలత**: ఇది ప్రొఫెషనల్ హార్డ్‌వేర్ డాక్యుమెంటేషన్ పోర్టల్‌లు మరియు వెబ్ ఆధారిత EDA సాధనాలతో అద్భుతమైన స్థిరత్వాన్ని అందిస్తుంది.
- **పనితీరు**: ఇది భారీ సాంకేతిక పరిశోధన కోసం సమర్థమైన PDF హ్యాండ్లింగ్ మరియు మెమరీ మేనేజ్‌మెంట్‌ను అందిస్తుంది.
- **వర్క్‌ఫ్లో**: ఇది ఈ VLSI వర్క్‌స్టేషన్ యొక్క నిర్దిష్ట ఇంజనీరింగ్ అవసరాలకు అనుగుణంగా ఉంటుంది.

### మీ డిఫాల్ట్ బ్రౌజర్‌ని ఎలా మార్చాలి?

మీరు వేరే బ్రౌజర్‌ని ఇష్టపడితే, MayankOS మార్చుకోవడాన్ని సులభతరం చేస్తుంది:
1. **వేరియబుల్‌ని మార్చండి**: మీ హోస్ట్ యొక్క `variables.nix` ఫైల్‌ను తెరవండి (ఉదా. `hosts/msi-modern14c7m/variables.nix`) మరియు `browser` లైన్‌ను మీ ఎంపికకు మార్చండి (ఉదా. `browser = "firefox";`).
2. **ఇన్‌స్టాలేషన్ కోసం తనిఖీ చేయండి**: మీకు నచ్చిన బ్రౌజర్ `modules/core/packages.nix`లో జాబಿತా చేయబడిందని నిర్ధారించుకోండి. అది అక్కడ లేకుంటే, దాని ప్యాకేజీ పేరును (ఉదా. `librewolf`) జాబಿತాకు జోడించండి.
3. **రీబిల్డ్ (Rebuild)**: మార్పును వర్తింపజేయడానికి `mcli rebuild` లేదా మీ నిర్దిష్ట రీబिल्డ్ కమాండ్ (ఉదా. `sudo nixos-rebuild switch --flake .#amd`) అమలు చేయండి.

మేము ఎంపిక మరియు స్వేచ్ఛను నమ్ముతాము. ఈ పర్యావరణం మీ వ్యక్తిగత వర్క్‌స్టేషన్‌గా రూపొందించబడింది—దీనిని మీ స్వంతం చేసుకోండి!

## 🛠️ కస్టమ్ హార్డ్‌వేర్ & హోస్ట్ సెటప్ గైడ్

1. **కొత్త హోస్ట్‌ను సృష్టించడం**:
   - `hosts/default` ఫోల్డర్‌ను మీ కంప్యూటర్ పేరుతో ఉన్న కొత్త ఫోల్డర్‌కు కాపీ చేయండి (ఉదా. `cp -r hosts/default hosts/my-laptop`).
2. **మీ హార్డ్‌వేర్ కాన్ఫిగరేషన్‌ను రూపొందించడం**:
   - మీ నిర్దిష్ట హార్డ్‌వేర్‌ను (డ్రైవ్‌లు, CPU మొదలైనవి) స్వయంచాలకంగా గుర్తించడానికి `nixos-generate-config --show-hardware-config > hosts/your-hostname/hardware.nix`ని రన్ చేయండి.
3. **మీ ప్రొఫైల్‌ను ఎంచుకోవడం**:
   - `flake.nix`ని తెరిచి, మీ హార్డ్‌వేర్‌కు సరిపోయేలా `profile` వేరియబుల్‌ను సెట్ చేయండి (ఆప్షన్స్: `amd`, `intel`, `nvidia`, `nvidia-laptop`, `amd-nvidia-hybrid`, లేదా `vm`).
4. **వేరియబుల్స్ కాన్ఫిగర్ చేయడం**:
   - మీ స్క్రీన్ రిజల్యూషన్, ప్రాధాన్య షెల్ (`barChoice`) మరియు ఇతర వ్యక్తిగత సెట్టింగ్‌లను సెట్ చేయడానికి `hosts/your-hostname/variables.nix`ని ఎడిట్ చేయండి.
5. **ఇతర ల్యాప్‌టాప్‌లకు మద్దతు**:
   - మీరు MSI వంటి ప్రత్యేక ల్యాప్‌టాప్‌ను కలిగి ఉంటే, `msi-ec` వంటి కెర్నల్ మాడ్యూల్‌లను ఎలా జోడించాలో ఉదాహరణల కోసం మీరు `hosts/msi-modern14c7m/default.nix`ని చూడవచ్చు.
6. **తుది రీబిల్డ్**:
   - అన్నింటినీ వర్తింపజేయడానికి `sudo nixos-rebuild switch --flake .#your-profile`ని రన్ చేయండి.

## Noctalia గురించి ముఖ్యమైన గమనిక

> మీరు మొదటిసారి లాగిన్ అయినప్పుడు, స్క్రీన్ ఖాళీగా ఉంటుంది, బయటకు రావడానికి SUPER + SHIFT + C నొక్కండి.
> లాగిన్ అవ్వండి, అప్పటి నుండి Noctalia ప్రారంభమవుతుంది.

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 మరిన్ని స్క్రీన్‌షాట్‌లు</strong></summary>

### Waybar థీమ్స్

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Noctalia షెల్ ఇంటిగ్రేషన్

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### అదనపు ఫీచర్లు

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### హార్డ్‌వేర్ సపోర్ట్ (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### చీట్‌షీట్లు మరియు గైడ్‌లు

- Nix బిగినర్స్ గైడ్: [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Hyprland కస్టమైజేషన్ గైడ్:
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)
- VLSI మరియు హార్డ్‌వేర్ ఇంజనీరింగ్ గైడ్: [English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

#### 🍖 అవసరాలు

- మీరు NixOS, వెర్షన్ 24.05+ లో ఉండాలి.
- `mayankos` ఫోల్డర్ (ఈ రెపో) మీ హోమ్ డైరెక్టరీలో ఉండాలి.
- మీరు **UEFI**తో బూట్ చేస్తూ **GPT** పార్టీషన్‌ను ఉపయోగించి NixOSని ఇన్‌స్టాల్ చేసి ఉండాలి.
- ** కనీసం 500MB /boot పార్టీషన్ అవసరం. **
- Systemd-boot సపోర్ట్ చేయబడుతుంది.
- GRUB కోసం మీరు ఇంటర్నెట్‌లో వెతకాలి. ☺️
- మీ హోస్ట్ నిర్దిష్ట ఫైళ్లను మాన్యువల్‌గా ఎడిట్ చేయడం.
- హోస్ట్ అంటే మీరు ఇన్‌స్టాల్ చేస్తున్న నిర్దిష్ట కంప్యూటర్.

#### 🎹 పైప్‌వైర్ & నోటిఫికేషన్ మెనూ కంట్రోల్స్

- మేము లైనక్స్ కోసం సరికొత్త మరియు గొప్ప ఆడియో సొల్యూషన్‌ను ఉపయోగిస్తున్నాము. టాప్ బార్‌లో అందుబాటులో ఉన్న నోటిఫికేషన్ సెంటర్‌లో మీడియా మరియు వాల్యూమ్ కంట్రోల్స్ మీకు ఉంటాయి.

#### 🏇 ఆప్టిమైజ్ చేయబడిన వర్క్‌ఫ్లో & అడ్వాన్స్‌డ్ విండో మేనేజ్‌మెంట్

- **Hyprland సపోర్ట్**: మెరుగైన అందం మరియు సామర్థ్యం కోసం డీఫాల్ట్ టైలింగ్ విండో మేనేజర్.
- **Niri సపోర్ట్**: ఇప్పుడు Niri కోసం పూర్తి సపోర్ట్ ఉంది, ఇది స్క్రోలబుల్-టైలింగ్ వేల్యాండ్ కంపోజిటర్. మీ `variables.nix`లో `niriEnable` ద్వారా దీన్ని టోగుల్ చేయండి.
- **KDE Plasma (ఆప్షనల్)**: KDE Plasma 6 కోసం సపోర్ట్ అందుబాటులో ఉంది కానీ డీఫాల్ట్‌గా డిసేబుల్ చేయబడింది.
- ఇక్కడ భారీ NeoVIM ప్రాజెక్ట్ లేదు, అద్భుతమైన NeoVIM సెటప్ కోసం `nixvim`ని ఉపయోగిస్తున్నాము. లాంగ్వేజ్ సపోర్ట్ ఇప్పటికే జోడించబడింది.

#### 🖥️ మల్టీ హోస్ట్ & యూజర్ కాన్ఫిగరేషన్

- మీరు వివిధ హోస్ట్ మెషీన్లు మరియు యూజర్ల కోసం విడివిడిగా సెట్టింగ్‌లను నిర్వచించవచ్చు.
- `modules/core/user.nix` ఫైల్‌లో మీ యూజర్ల కోసం అదనపు ప్యాకేజీలను సులభంగా పేర్కొనవచ్చు.
- అర్థం చేసుకోవడానికి సులభమైన ఫైల్ స్ట్రక్చర్ మరియు సరళమైన, కానీ సమగ్రమైన కాన్ఫిగరేషన్.

#### 👼 సపోర్ట్‌పై దృష్టి సారించిన అద్భుతమైన కమ్యూనిటీ

- NixOSని అందుబాటులోకి తీసుకురావడమే MayankOS యొక్క పూర్తి ఆలోచన.
- NixOS నిజానికి మీరు భాగం కావాలని కోరుకునే ఒక గొప్ప కమ్యూనిటీ.
- ఓపికగా ఉండి, మీకు సహాయం చేయడానికి తమ ఖాళీ సమయాన్ని వెచ్చించే చాలా మంది ఈ కాన్ఫిగరేషన్‌ను నడుపుతున్నారు.
- ఏదైనా సహాయం కోసం డిస్కార్డ్‌లో సంప్రదించడానికి సంకోచించకండి.

#### 📦 ప్యాకేజీలను ఎలా ఇన్‌స్టాల్ చేయాలి?

- ప్యాకేజీ పేరు ఏమిటి లేదా అందుబాటులో ఉన్న ఆప్షన్ల కోసం మీరు [Nix Packages](https://search.nixos.org/packages?) & [Options](https://search.nixos.org/options?) పేజీలలో వెతకవచ్చు.
- ప్యాకేజీని జోడించడానికి `modules/core/packages.nix` మరియు `modules/core/user.nix`లో విభాగాలు ఉన్నాయి. ఒకటి సిస్టమ్ వ్యాప్తంగా అందుబాటులో ఉన్న ప్రోగ్రామ్‌ల కోసం మరియు మరొకటి మీ యూజర్ ఎన్విరాన్మెంట్ కోసం మాత్రమే.

#### 🐧 డెస్క్‌టాప్ ఎన్విరాన్మెంట్లను మార్చడం

MayankOS బహుళ ఎన్విరాన్మెంట్లను సపోర్ట్ చేస్తుంది:
- **Hyprland**: డీఫాల్ట్‌గా ఎనేబుల్ చేయబడింది.
- **Niri**: మీ హోస్ట్ యొక్క `variables.nix`లో `niriEnable = true;` సెట్ చేయడం ద్వారా దీన్ని ఎనేబుల్ చేయండి.
- **KDE Plasma**: KDE Plasmaని ఎనేబుల్ చేయడానికి, `modules/core/xserver.nix`కి వెళ్లి `services.desktopManager.plasma6.enable = true;` లైన్‌ని మరియు దానికి సంబంధించిన `environment.systemPackages` బ్లాక్‌ని అన్‌కమెంట్ (uncomment) చేయండి.

#### 🙋 సమస్యలు / ప్రశ్నలు ఉన్నాయా?

- దయచేసి రెపోలో ఇష్యూను రైజ్ చేయడానికి సంకోచించకండి, ఫీచర్ రిక్వెస్ట్ టైటిల్‌ను [feature request]తో ప్రారంభించండి, ధన్యవాదాలు!
- వేగవంతమైన ప్రతిస్పందన కోసం మమ్మల్ని [Discord](https://discord.gg/XhZmNTnhtp)లో కూడా సంప్రదించండి.

# Hyprland కీబైండింగ్స్

సులభమైన రిఫరెన్స్ కోసం రూపొందించబడిన Hyprland కీబైండింగ్స్ కింద ఉన్నాయి. కుడి కాలమ్ **Noctalia షెల్**కు సంబంధించిన కీబైండింగ్స్‌ను చూపుతుంది (`barChoice = "noctalia"` ఉన్నప్పుడు మాత్రమే అందుబాటులో ఉంటుంది).

<table>
<tr>
<td width="50%">

## ప్రామాణిక కీబైండింగ్స్

### అప్లికేషన్ లాంచింగ్

- `$modifier + Return` → `terminal` ప్రారంభించండి
- `$modifier + Tab` → `Quickshell Overview` టోగుల్ చేయండి (లైవ్ ప్రివ్యూలతో వర్క్‌స్పేస్ ఓవర్‌వ్యూ)
- `$modifier + K` → కీబైండ్లను జాబితా చేయండి
- `$modifier + Shift + W` → `web-search` తెరవండి
- `$modifier + Alt + W` → `wallsetter` తెరవండి
- `$modifier + Shift + N` → `swaync-client -rs` రన్ చేయండి
- `$modifier + W` → `Web Browser` ప్రారంభించండి
- `$modifier + Y` → `yazi`తో `kitty` తెరవండి
- `$modifier + E` → `emopicker9000` తెరవండి
- `$modifier + S` → స్క్రీన్‌షాట్ తీసుకోండి
- `$modifier + Shift + D` → `Discord` తెరవండి
- `$modifier + O` → `OBS Studio` ప్రారంభించండి
- `$modifier + Alt + C` → కలర్ పిక్కర్
- `$modifier + G` → `GIMP` తెరవండి
- `$modifier + T` → `pypr`తో టెర్మినల్ టోగుల్ చేయండి
- `$modifier + Alt + M` → `pavucontrol` తెరవండి

### విండో మేనేజ్‌మెంట్

- `$modifier + Q` → యాక్టివ్ విండోను మూసివేయండి
- `$modifier + P` → సూడో టైలింగ్ టోగుల్ చేయండి
- `$modifier + Shift + I` → స్ప్లిట్ మోడ్ టోగుల్ చేయండి
- `$modifier + F` → ఫుల్‌స్క్రీన్ టోగుల్ చేయండి
- `$modifier + Shift + F` → ఫ్లోటింగ్ మోడ్ టోగుల్ చేయండి
- `$modifier + Alt + F` → అన్ని విండోలను ఫ్లోట్ చేయండి
- `$modifier + Shift + C` → Hyprland నుండి నిష్క్రమించండి

### విండో మూవ్‌మెంట్

- `$modifier + Shift + ← / → / ↑ / ↓` → ఎడమ/కుడి/పైకి/కిందకి జరపండి
- `$modifier + Shift + H / L / K / J` → ఎడమ/కుడి/పైకి/కిందకి జరపండి
- `$modifier + Alt + ← / → / ↑ / ↓` → ఎడమ/కుడి/పైకి/కిందకి మార్చండి

### ఫోకస్ మూవ్‌మెంట్

- `$modifier + ← / → / ↑ / ↓` → ఫోకస్‌ను ఎడమ/కుడి/పైకి/కిందకి జరపండి
- `$modifier + H / L / K / J` → ఫోకస్‌ను ఎడమ/కుడి/పైకి/కిందకి జరపండి

### వర్క్‌స్పేస్‌లు

- `$modifier + 1-10` → వర్క్‌స్పేస్ 1-10కి మారండి
- `$modifier + Shift + Space` → విండోను స్పెషల్ వర్క్‌స్పేస్‌కు జరపండి
- `$modifier + Space` → స్పెషల్ వర్క్‌స్పేస్ టోగుల్ చేయండి
- `$modifier + Shift + 1-10` → విండోను వర్క్‌స్పేస్ 1-10కి జరపండి
- `$modifier + Control + → / ←` → వర్క్‌స్పేస్‌ను ముందుకు/వెనుకకు మార్చండి

### విండో సైక్లింగ్

- `Alt + Tab` → తదుపరి విండోకు వెళ్లండి / యాక్టివ్ విండోను పైకి తీసుకురండి

</td>
<td width="50%">

## 🎨 Noctalia షెల్ కీబైండింగ్స్

_`variables.nix`లో `barChoice = "noctalia"` ఉన్నప్పుడు అందుబాటులో ఉంటుంది_

- `$modifier + D` → లాంచర్ టోగుల్
- `$modifier + Shift + Return` → లాంచర్ టోగుల్
- `$modifier + M` → నోటిఫికేషన్ల మెనూ
- `$modifier + V` → క్లిప్‌బోర్డ్ మేనేజర్
- `$modifier + Alt + P` → సెట్టింగ్స్ ప్యానెల్
- `$modifier + Shift + ,` → సెట్టింగ్స్ ప్యానెల్
- `$modifier + Alt + L` → లాక్ స్క్రీన్
- `$modifier + Shift + Y` → వాల్‌పేపర్ మేనేజర్
- `$modifier + X` → పవర్ మెనూ
- `$modifier + C` → కంట్రోల్ సెంటర్
- `$modifier + Ctrl + R` → స్క్రీన్ రికార్డర్

### Rofi లాంచర్ (Waybar మోడ్)

_`variables.nix`లో `barChoice = "waybar"` ఉన్నప్పుడు అందుబాటులో ఉంటుంది_

- `$modifier + D` → Rofi లాంచర్‌ను ప్రారంభించండి
- `$modifier + Shift + Return` → Rofi లాంచర్‌ను ప్రారంభించండి

### ఇతర ఫీచర్లు

- `$modifier + Shift + Return` (Waybar) → అప్లికేషన్ లాంచర్
- `$modifier + V` (Waybar) → `cliphist` ద్వారా క్లిప్‌బోర్డ్ హిస్టరీ

</td>
</tr>
</table>

## ఇన్‌స్టాలేషన్:

> **⚠️ ముఖ్యమైనది:** ఈ ఇన్‌స్టాలేషన్ పద్ధతులు **కొత్త ఇన్‌స్టాలేషన్లకు మాత్రమే**. మీరు ఇప్పటికే MayankOSని ఇన్‌స్టాల్ చేసి ఉంటే మరియు v2.4కి అప్‌గ్రేడ్ చేయాలనుకుంటే, కింద ఉన్న [అప్‌గ్రేడ్ సూచనలు](#upgrading-from-mayankos-23-to-24) చూడండి. గమనిక: అప్‌గ్రేడ్ స్క్రిప్ట్‌తో సమస్య ఉంది. అది పరిష్కరించబడే వరకు తొలగించబడింది.

<details>
<summary><strong> ⬇️ స్క్రిప్ట్‌తో ఇన్‌స్టాల్ చేయండి (కొత్త ఇన్‌స్టాలేషన్లు మాత్రమే)</strong></summary>

### 📜 స్క్రిప్ట్:

**కొత్త ఇన్‌స్టాలేషన్లకు** ప్రారంభించడానికి ఇది సులభమైన మరియు సిఫార్సు చేయబడిన మార్గం. ఫ్లేక్‌లో మీరు చేయగలిగే ప్రతి ఆప్షన్‌ను మార్చడానికి లేదా అదనపు ప్యాకేజీలను ఇన్‌స్టాల్ చేయడానికి ఈ స్క్రిప్ట్ ఉద్దేశించబడలేదు. ఇది కేవలం తక్కువ బ్రేకేజ్ అవకాశాలతో నా కాన్ఫిగరేషన్‌ను ఇన్‌స్టాల్ చేయడానికి మరియు తర్వాత మీ ఇష్టానుసారం మార్చుకోవడానికి ఇక్కడ ఉంది!

> **⚠️ హెచ్చరిక:** ఈ స్క్రిప్ట్ ఇప్పటికే ఉన్న ~/mayankos డైరెక్టరీని పూర్తిగా భర్తీ చేస్తుంది. మీకు ఇప్పటికే MayankOS ఇన్‌స్టాల్ చేయబడి, కాన్ఫిగర్ చేయబడి ఉంటే దీన్ని ఉపయోగించవద్దు.

దీన్ని కాపీ చేసి రన్ చేయండి:

```bash
nix-shell -p git curl pciutils
```

తర్వాత:

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### ఇన్‌స్టాలేషన్ పూర్తయిన తర్వాత మీ ఎన్విరాన్మెంట్ బ్రేక్ అయినట్లు అనిపించవచ్చు. కేవలం రీబూట్ చేయండి మరియు మీరు లాగిన్ స్క్రీన్‌ను చూస్తారు.

</details>

<details>
<summary><strong> 🦽 మాన్యువల్ ఇన్‌స్టాలేషన్ ప్రక్రియ:  </strong></summary>

1. Git & Vim ఇన్‌స్టాల్ చేయబడి ఉన్నాయని నిర్ధారించుకోవడానికి ఈ కమాండ్ రన్ చేయండి:

```bash
nix-shell -p git vim
```

2. ఈ రెపోను క్లోన్ చేయండి & అందులోకి వెళ్లండి:

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

⚠️ గుర్తుంచుకోవలసిన ఒక ముఖ్యమైన విషయం:
కొత్త NixOS ఇన్‌స్టాలేషన్‌లో మీరు మొదటిసారి స్క్రిప్ట్‌ను రన్ చేసినప్పుడు, git మరియు pciutils అందుబాటులో ఉన్నాయని నిర్ధారించుకోవాలి. అవి లేకపోతే, స్క్రిప్ట్ మీకు చెబుతుంది, కానీ దీన్ని రన్ చేయడం ద్వారా మీరు వాటిని త్వరగా పొందవచ్చు:

```bash
nix-shell -p git pciutils
```
తర్వాత ఇన్‌స్టాలర్‌ను రన్ చేయండి:

```bash
sh ./install-mayankos.sh
```

తీర్పు: స్క్రిప్ట్ చాలా పటిష్టంగా ఉంది. ఇది మీ రిపోజిటరీ యొక్క ఖచ్చితమైన నిర్మాణంతో సరిపోలుతుంది మరియు "కష్టమైన పనులను" (flake.nix మరియు variables.nix అప్‌డేట్ చేయడం వంటివి) ఆటోమేటిక్‌గా చేస్తుంది. మీరు నిశ్చింతగా ముందుకు వెళ్లవచ్చు! 🚀

3. మీ మెషీన్(ల) కోసం హోస్ట్ ఫోల్డర్‌ను ఇలా సృష్టించండి:

```bash
cp -r hosts/default hosts/<your-desired-hostname>
```

4. మీ హార్డ్‌వేర్ కాన్ఫిగరేషన్‌ను రూపొందించండి:

```bash
nixos-generate-config --show-hardware-config > hosts/<your-desired-hostname>/hardware.nix
```

5. మీ హోస్ట్‌నేమ్ మరియు ప్రొఫైల్‌కు సరిపోయేలా `hosts/<your-desired-hostname>/variables.nix` మరియు `flake.nix`లను ఎడిట్ చేయండి.

6. ఫ్లేక్‌ను ఇన్‌స్టాల్ చేయండి (`profile` స్థానంలో `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid`, లేదా `vm`ని ఉపయోగించండి):

```bash
sudo nixos-rebuild switch --flake .#profile
```

ఇప్పుడు మీరు కాన్ఫిగరేషన్‌ను రీబిల్డ్ చేయాలనుకున్నప్పుడు `mcli rebuild` కమాండ్ లేదా `fr` అలియాస్‌ను ఉపయోగించవచ్చు.

</details>

### ప్రత్యేక గుర్తింపులు:

మీ సహాయం మొత్తానికి ధన్యవాదాలు

- KoolDots https://github.com/LinuxBeginnings
- JakKoolit https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## మీరు ఆనందిస్తారని ఆశిస్తున్నాను!





## ⚡ Professional VLSI & Hardware Capabilities

This environment is built to be a powerhouse for hardware engineering. You don't just get tools; you get a complete, integrated workflow.

### 🚀 What You Can Do
- **SoC & CPU Design:** Design complex RISC-V or ARM-based SoCs from scratch.
- **Advanced Verification (DV):** Use **slang**, **morty**, and **cocotb** to ensure your designs are bug-free with industrial-grade precision.
- **Full RTL-to-GDSII:** Go from code to a physical chip layout using **LibreLane** and **OpenROAD** (already integrated via advanced flakes).
- **Analog & Mixed-Signal:** Perform high-fidelity circuit simulations with **Ngspice** and **Xyce**, and design layouts with **Magic-VLSI**.
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

1. **Install:** `git clone https://github.com/techanand8/mayankos.git ~/mayankos`

⚠️ గుర్తుంచుకోవలసిన ఒక ముఖ్యమైన విషయం:
కొత్త NixOS ఇన్‌స్టాలేషన్‌లో మీరు మొదటిసారి స్క్రిప్ట్‌ను రన్ చేసినప్పుడు, git మరియు pciutils అందుబాటులో ఉన్నాయని నిర్ధారించుకోవాలి. అవి లేకపోతే, స్క్రిప్ట్ మీకు చెబుతుంది, కానీ దీన్ని రన్ చేయడం ద్వారా మీరు వాటిని త్వరగా పొందవచ్చు:

```bash
nix-shell -p git pciutils
```
తర్వాత ఇన్‌స్టాలర్‌ను రన్ చేయండి:

```bash
sh ./install-mayankos.sh
```

తీర్పు: స్క్రిప్ట్ చాలా పటిష్టంగా ఉంది. ఇది మీ రిపోజిటరీ యొక్క ఖచ్చితమైన నిర్మాణంతో సరిపోలుతుంది మరియు "కష్టమైన పనులను" (flake.nix మరియు variables.nix అప్‌డేట్ చేయడం వంటివి) ఆటోమేటిక్‌గా చేస్తుంది. మీరు నిశ్చింతగా ముందుకు వెళ్లవచ్చు! 🚀
2. **Rebuild:** Any time you change a setting, run `mcli rebuild` or `sudo nixos-rebuild boot --flake ~/mayankos/#<profile>`.