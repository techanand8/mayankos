[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)
n**Hinweis: Bitte entschuldigen Sie etwaige sprachliche Fehler in dieser Übersetzung; ich habe sie in Ihrer Sprache bereitgestellt, damit Sie die Dokumentation und das Projekt besser verstehen können. Für technische Präzision beziehen Sie sich bitte auf die englische oder spanische Version.**

**Hinweis: Bitte entschuldigen Sie etwaige sprachliche Fehler in dieser Übersetzung; ich habe sie in Ihrer Sprache bereitgestellt, damit Sie die Dokumentation und das Projekt besser verstehen können. Für technische Präzision beziehen Sie sich bitte auf die englische oder spanische Version.**

<div align="center">

## MayankOS 🟰 Beste ❄️ NixOS-Konfigurationen

\*\* Aktualisiert: 22. April 2026

MayankOS ist eine leistungsstarke und elegante Methode, um meine NixOS-Konfiguration auf jedem System zu reproduzieren. Aufbauend auf der Flexibilität und Inspiration des **ZaneyOS**-Projekts bietet es eine hochgradig angepasste Umgebung inklusive Hintergrundbildern, Skripten, Anwendungen und optimierter Hardware-Unterstützung.

## 🚀 Neue Funktionen & Hardware-Unterstützung (v2.6.1)

Diese Version bringt signifikante Optimierungen und Unterstützung für moderne Hardware:

### 💻 MSI Modern 14 C7M & AMD 7000 Serie
- **Optimierte AMD 7530U Leistung**: Nutzt `amd-pstate-epp` und `auto-cpufreq` voll aus für eine perfekte Balance zwischen Leistung und Akkulaufzeit.
- **Akkupflege-Management**: Native Unterstützung für **MSI Battery Thresholds** via `msi-ec`, schont Ihren Akku durch Begrenzung der Ladung auf 80%, wenn das Gerät am Netz hängt.
- **Erweiterte Stromverbrauch-Skalierung**: Automatisches Umschalten zwischen `performance` und `powersave` Modi basierend auf dem Stromstatus.
- **Next-Gen Grafik**: Volle `amdgpu` Unterstützung mit VA-API Hardwarebeschleunigung, ROCm und Vulkan-Tools vorkonfiguriert.

### 🎨 Vielfältige Shell-Erlebnisse
Wählen Sie Ihr bevorzugtes Desktop-Erlebnis durch Einstellen von `barChoice` in `variables.nix`:
- **Noctalia**: Eine moderne, funktionsreiche Shell mit integrierten Systemsteuerungen.
- **Caelestia**: Eine elegante und leichtgewichtige Alternative.
- **DMS (DankMaterialShell)**: Eine von Material-Design inspirierte Shell für einen schlanken, modernen Look.
- **Waybar**: Die klassische, hochgradig anpassbare Statusleiste.

### 🔧 System-Verbesserungen
- **Neuester Linux-Kernel**: Läuft jetzt auf der **7.x Kernel**-Linie für beste Hardwarekompatibilität.
- **Erweiterte Niri-Unterstützung**: Volle Integration für den scrollbaren Tiling-Compositor Niri.
- **Verbesserte Virtualisierung**: Optimierte Unterstützung für VMware und andere Virtualisierungsplattformen.

## 🤝 Beziehung zu ZaneyOS

Dieses Projekt ist ein stolzer Nachfahre des legendären [ZaneyOS](https://gitlab.com/Zaney/zaneyos.git)-Projekts. Obwohl es den gleichen Geist teilt, NixOS zugänglich und schön zu machen, hat sich MayankOS zu einer eigenständigen Distribution mit eigenem Fokus entwickelt:

### 🌟 Was macht es anders?
- **Fokus auf moderne Hardware**: Im Gegensatz zum allgemeineren Ansatz von ZaneyOS enthält MayankOS tiefgreifende Optimierungen für die neueste **AMD Ryzen 7000 Serie** und **MSI-Laptops** (einschließlich Akku-Gesundheitsmanagement).
- **Erweitertes Shell-Ökosystem**: Wir sind über Waybar hinausgegangen und bieten volle Unterstützung für **Noctalia**, **Caelestia** und **DMS**, was Ihnen mehr Auswahlmöglichkeiten für Ihren Desktop-Workflow bietet.
- **Neueste Kernel-Strategie**: Wir priorisieren `linuxPackages_latest` (7.x+), um sicherzustellen, dass die neuesten Hardware-Features sofort funktionieren.
- **Erweiterte Compositor-Optionen**: Wir haben die volle Unterstützung für den **Niri scrollable-tiling compositor** integriert und bieten damit eine moderne Alternative zu Hyprland für Benutzer, die einen scrollbaren Tiling-Workflow bevorzugen.
- **Verbesserte Internationalisierung**: Unterstützung für über 13 Sprachen, um das NixOS-Erlebnis einem globalen Publikum zugänglich zu machen.

Wenn Sie nach der ursprünglichen Inspiration suchen, besuchen Sie bitte das [Offizielle ZaneyOS GitLab](https://gitlab.com/Zaney/zaneyos.git). Diese Umgebung nimmt dieses unglaubliche Fundament und entwickelt es weiter für Benutzer, die modernste Hardware-Unterstützung und eine vielfältigere Auswahl an Desktop-Shells benötigen.

## 🏗️ Installation: Automatisch vs. Manuell

Es werden zwei primäre Wege angeboten für den Einstieg:
1. **Automatisches Skript (empfohlen für neue Benutzer)**: Eine schnelle Ein-Befehl-Installation, die alles für Sie erledigt. Dies ist der schnellste Weg zu einem funktionierenden Desktop.
2. **Manuelle Installation**: Für Benutzer, die die vollständige Kontrolle über jeden Aspekt ihres Systems haben möchten. Die manuelle Installation ist besser, wenn Sie Ihre Werkzeuge *vor* Ihrem ersten Rebuild anpassen möchten.

## ⚡ Professionelle VLSI- & Hardware-Engineering-Workstation

Dieses System wurde speziell als leistungsstarke, professionelle Workstation für **VLSI- und Hardware-Engineering** entwickelt.

- **Warum es perfekt ist**: Es ist vorkonfiguriert mit einer umfassenden Suite von Werkzeugen für:
  - **HDL-Simulation**: `ghdl`, `nvc`, `iverilog`, `verilator`, `gtkwave`, `surfer`, `fusesoc`, `surelog`.
  - **Synthese & Physical Design**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`, `gdsfactory`. (OpenLane ready)
  - **FPGA- & Embedded-Entwicklung**: `nextpnr`, `icestorm`, `openfpgaloader`, `dfu-util`, `qemu`.
  - **LSPs & Toolkits**: `sv-lang`, `vhdl-ls`, `verible`, `veridian`, `svls`, `pyverilog`, `verilogae`, `volare`.
  - **PDKs**: Volle Unterstützung für **SkyWater 130** und **GF180MCU** via `volare`.
  - **PCB- & Schaltplan-Design**: `kicad`, `ngspice`, `xyce`, `doxygen`.
- **Anpassung**: Wenn Sie diese Werkzeuge NICHT benötigen, können Sie einfach den Block `# --- VLSI & Hardware Engineering ---` in `modules/core/packages.nix` auskommentieren oder entfernen, bevor Sie Ihr `nixos-rebuild` ausführen.
- **Advanced EDA**: For tools like **OpenLane** or advanced DFT suites not yet in standard Nixpkgs, we recommend using the [nix-eda](https://github.com/nix-eda/nix-eda) overlay or Docker containers to ensure PDK compatibility.
- **Zukunftssicher**: Dies ist erst der Anfang; weitere spezialisierte VLSI- und EDA-Werkzeuge (including built-in OpenLane v2 support) sind für zukünftige Updates geplant, um dies zur ultimativen Plattform für Hardware-Designer zu machen.

## 🌐 Webbrowser-Wahl & Anpassung

### Warum Microsoft Edge?

Standardmäßig verwendet MayankOS jetzt **Microsoft Edge**. Wir wissen, dass die Linux-Community starke Präferenzen für Browser wie Firefox, Zen oder Brave hat. Edge wurde jedoch für diese Workstation ausgewählt, weil:
- **Kompatibilität**: Er bietet hervorragende Stabilität mit professionellen Hardware-Dokumentationsportalen und webbasierten EDA-Tools.
- **Leistung**: Er bietet effizientes PDF-Handling und Speichermanagement für intensive technische Forschung.
- **Workflow**: Er passt zu den spezifischen technischen Anforderungen dieser VLSI-Workstation.

### So ändern Sie Ihren Standard-Browser

Wenn Sie einen anderen Browser bevorzugen, macht die Konfiguration den Wechsel einfach:
1. **Variable ändern**: Öffnen Sie die Datei `variables.nix` Ihres Hosts (z. B. `hosts/msi-modern14c7m/variables.nix`) und ändern Sie die Zeile `browser` nach Ihrer Wahl (z. B. `browser = "firefox";`).
2. **Installation prüfen**: Stellen Sie sicher, dass Ihr bevorzugter Browser in `modules/core/packages.nix` aufgeführt ist. Wenn er nicht vorhanden ist, fügen Sie einfach seinen Paketnamen (z. B. `librewolf`) zur Liste hinzu.
3. **Neu erstellen**: Führen Sie `mcli rebuild` oder Ihren spezifischen Rebuild-Befehl aus (z. B. `sudo nixos-rebuild switch --flake .#amd`), um die Änderung anzuwenden.

Wir glauben an Auswahl und Freiheit. Diese Umgebung ist so konzipiert, dass sie Ihre persönliche Workstation ist – fühlen Sie sich frei, sie zu Ihrer eigenen zu machen!

## 🛠️ Leitfaden für benutzerdefinierte Hardware- & Host-Einrichtung

1. **Erstellen eines neuen Hosts**:
   - Kopieren Sie den Ordner `hosts/default` in einen neuen Ordner, der nach Ihrem Computer benannt ist (z. B. `cp -r hosts/default hosts/mein-laptop`).
2. **Generieren Ihrer Hardware-Konfiguration**:
   - Führen Sie `nixos-generate-config --show-hardware-config > hosts/ihr-hostname/hardware.nix` aus, um Ihre spezifische Hardware (Laufwerke, CPU usw.) automatisch zu erkennen.
3. **Auswahl Ihres Profils**:
   - Öffnen Sie `flake.nix` und setzen Sie die Variable `profile` passend zu Ihrer Hardware (Optionen: `amd`, `intel`, `nvidia`, `nvidia-laptop`, `amd-nvidia-hybrid` oder `vm`).
4. **Konfiguration der Variablen**:
   - Bearbeiten Sie `hosts/ihr-hostname/variables.nix`, um Ihre Bildschirmauflösung, Ihre bevorzugte Shell (`barChoice`) und andere persönliche Einstellungen festzulegen.
5. **Unterstützung für andere Laptops**:
   - Wenn Sie einen speziellen Laptop wie ein MSI haben, können Sie in `hosts/msi-modern14c7m/default.nix` nach Beispielen suchen, wie Sie Kernel-Module wie `msi-ec` hinzufügen können.
6. **Abschließender Rebuild**:
   - Führen Sie `sudo nixos-rebuild switch --flake .#ihr-profil` aus, um alles anzuwenden.

## Wichtiger Hinweis zu Noctalia

> Beim ersten Login bleibt der Bildschirm leer. Drücken Sie SUPER + SHIFT + C zum Beenden.
> Nach dem erneuten Einloggen startet Noctalia automatisch.

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 Mehr Screenshots</strong></summary>

### Waybar Themes

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Noctalia Shell Integration

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### Zusätzliche Funktionen

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### Hardware-Unterstützung (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### Cheatsheets und Anleitungen

- Nix Einsteiger-Leitfaden: [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Hyprland-Anpassungsleitfaden:
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)
- VLSI- und Hardware-Engineering-Leitfaden: [English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

#### 🍖 Voraussetzungen

- Sie müssen NixOS in der Version 24.05+ verwenden.
- Der Ordner `mayankos` (dieses Repository) sollte sich in Ihrem Home-Verzeichnis befinden.
- NixOS muss auf einer **GPT**-Partition mit **UEFI**-Boot installiert sein.
- ** Mindestens 500 MB /boot-Partition erforderlich. **
- Systemd-boot wird unterstützt.
- Für GRUB müssen Sie sich selbst im Internet schlau machen. ☺️
- Manuelle Bearbeitung Ihrer host-spezifischen Dateien.
- Der "Host" ist der spezifische Computer, auf dem Sie installieren.

#### 🎹 Pipewire & Benachrichtigungsmenü-Steuerung

- Wir verwenden die neueste und beste Audiolösung für Linux. Außerdem stehen Ihnen Medien- und Lautstärkeregler im Benachrichtigungszentrum in der oberen Leiste zur Verfügung.

#### 🏇 Optimierter Workflow & Erweitertes Fenstermanagement

- **Hyprland-Unterstützung**: Standardmäßiger Tiling-Window-Manager für mehr Eleganz und Effizienz.
- **Niri-Unterstützung**: Enthält jetzt volle Unterstützung für Niri, einen scrollbaren Tiling-Wayland-Compositor. Aktivieren Sie ihn über `niriEnable` in Ihrer `variables.nix`.
- **KDE Plasma (Optional)**: Unterstützung für KDE Plasma 6 ist verfügbar, aber standardmäßig deaktiviert.
- Kein massives NeoVIM-Projekt hier; wir nutzen `nixvim` für ein unglaubliches NeoVIM-Setup mit bereits integrierter Sprachunterstützung.

#### 🖥️ Multi-Host & Benutzerkonfiguration

- Sie können separate Einstellungen für verschiedene Host-Maschinen und Benutzer definieren.
- Fügen Sie in der Datei `modules/core/user.nix` einfach zusätzliche Pakete für Ihre Benutzer hinzu.
- Leicht verständliche Dateistruktur und einfache, aber umfassende Konfiguration.

#### 👼 Eine großartige Community mit Fokus auf Support

- Die gesamte Idee hinter diesem Projekt ist es, NixOS zugänglicher zu machen.
- NixOS hat eine großartige Community, von der Sie ein Teil sein möchten.
- Viele geduldige Menschen, die gerne ihre Freizeit opfern, um Ihnen zu helfen, nutzen diese Konfiguration.
- Kontaktieren Sie uns gerne auf Discord für Hilfe jeglicher Art.

#### 📦 Wie installiert man Pakete?

- Sie können auf den Seiten für [Nix Packages](https://search.nixos.org/packages?) & [Options](https://search.nixos.org/options?) nach Paketnamen oder Optionen suchen, die Konfigurationshürden für Sie übernehmen.
- Zum Hinzufügen von Paketen gibt es Abschnitte in `modules/core/packages.nix` und `modules/core/user.nix`. Einer ist für systemweit verfügbare Programme und der andere nur für Ihre Benutzerumgebung.

#### 🐧 Desktop-Umgebungen wechseln

Es werden mehrere Umgebungen unterstützt:
- **Hyprland**: Standardmäßig aktiviert.
- **Niri**: Aktivieren Sie es, indem Sie `niriEnable = true;` in der `variables.nix` Ihres Hosts setzen.
- **KDE Plasma**: Um KDE Plasma zu aktivieren, gehen Sie zu `modules/core/xserver.nix` und entfernen Sie die Kommentierung der Zeile `services.desktopManager.plasma6.enable = true;` sowie des zugehörigen `environment.systemPackages`-Blocks.

#### 🙋 Probleme / Fragen?

- Erstellen Sie gerne ein Issue im Repository. Bitte kennzeichnen Sie Feature-Anfragen mit einem Titel, der mit [feature request] beginnt. Vielen Dank!
- Kontaktieren Sie uns auch auf [Discord](https://discord.gg/XhZmNTnhtp) für eine potenziell schnellere Antwort.

# Hyprland Tastenkombinationen (Keybindings)

Unten finden Sie die Tastenkombinationen für Hyprland, formatiert zur einfachen Referenz. Die rechte Spalte zeigt Tastenkombinationen, die spezifisch für die **Noctalia Shell** sind (nur verfügbar, wenn `barChoice = "noctalia"`).

<table>
<tr>
<td width="50%">

## Standard-Tastenkombinationen

### Anwendungen starten

- `$modifier + Return` → `terminal` starten
- `$modifier + Tab` → `Quickshell Overview` umschalten (Arbeitsbereichsübersicht mit Live-Vorschau)
- `$modifier + K` → Tastenkombinationen auflisten
- `$modifier + Shift + W` → `web-search` öffnen
- `$modifier + Alt + W` → `wallsetter` öffnen
- `$modifier + Shift + N` → `swaync-client -rs` ausführen
- `$modifier + W` → `Web Browser` starten
- `$modifier + Y` → `kitty` mit `yazi` öffnen
- `$modifier + E` → `emopicker9000` öffnen
- `$modifier + S` → Screenshot aufnehmen
- `$modifier + Shift + D` → `Discord` öffnen
- `$modifier + O` → `OBS Studio` starten
- `$modifier + Alt + C` → Farbpipette
- `$modifier + G` → `GIMP` öffnen
- `$modifier + T` → Terminal mit `pypr` umschalten
- `$modifier + Alt + M` → `pavucontrol` öffnen

### Fenstermanagement

- `$modifier + Q` → Aktives Fenster schließen
- `$modifier + P` → Pseudo-Tiling umschalten
- `$modifier + Shift + I` → Split-Modus umschalten
- `$modifier + F` → Vollbild umschalten
- `$modifier + Shift + F` → Floating-Modus umschalten
- `$modifier + Alt + F` → Alle Fenster schweben lassen
- `$modifier + Shift + C` → Hyprland beenden

### Fensterbewegung

- `$modifier + Shift + ← / → / ↑ / ↓` → Nach links/rechts/oben/unten bewegen
- `$modifier + Shift + H / L / K / J` → Nach links/rechts/oben/unten bewegen
- `$modifier + Alt + ← / → / ↑ / ↓` → Nach links/rechts/oben/unten tauschen

### Fokusbewegung

- `$modifier + ← / → / ↑ / ↓` → Fokus nach links/rechts/oben/unten bewegen
- `$modifier + H / L / K / J` → Fokus nach links/rechts/oben/unten bewegen

### Arbeitsbereiche (Workspaces)

- `$modifier + 1-10` → Zu Arbeitsbereich 1-10 wechseln
- `$modifier + Shift + Space` → Fenster in speziellen Arbeitsbereich verschieben
- `$modifier + Space` → Speziellen Arbeitsbereich umschalten
- `$modifier + Shift + 1-10` → Fenster in Arbeitsbereich 1-10 verschieben
- `$modifier + Control + → / ←` → Arbeitsbereich vor/zurück wechseln

### Fenster-Zyklus

- `Alt + Tab` → Zum nächsten Fenster wechseln / Aktives nach oben bringen

</td>
<td width="50%">

## 🎨 Noctalia Shell Tastenkombinationen

_Verfügbar, wenn `barChoice = "noctalia"` in `variables.nix`_

- `$modifier + D` → Launcher umschalten
- `$modifier + Shift + Return` → Launcher umschalten
- `$modifier + M` → Benachrichtigungsmenü
- `$modifier + V` → Zwischenablage-Manager
- `$modifier + Alt + P` → Einstellungsmenü
- `$modifier + Shift + ,` → Einstellungsmenü
- `$modifier + Alt + L` → Bildschirm sperren
- `$modifier + Shift + Y` → Hintergrundbild-Manager
- `$modifier + X` → Energiemenü
- `$modifier + C` → Kontrollzentrum
- `$modifier + Ctrl + R` → Bildschirmaufnahme

### Rofi Launcher (Waybar Modus)

_Verfügbar, wenn `barChoice = "waybar"` in `variables.nix`_

- `$modifier + D` → Rofi Launcher starten
- `$modifier + Shift + Return` → Rofi Launcher starten

### Weitere Funktionen

- `$modifier + Shift + Return` (Waybar) → Anwendungsstarter
- `$modifier + V` (Waybar) → Zwischenablage-Verlauf via `cliphist`

</td>
</tr>
</table>

## Installation:

> **⚠️ WICHTIG:** Diese Installationsmethoden sind NUR für **NEUINSTALLATIONEN**. Wenn Sie MayankOS bereits installiert haben und auf v2.4 aktualisieren möchten, lesen Sie die [Upgrade-Anweisungen](#upgrading-from-mayankos-23-to-24) unten. Hinweis: Es gibt ein Problem mit dem Upgrade-Skript. Es wurde entfernt, bis es behoben ist.

<details>
<summary><strong> ⬇️ Installation per Skript (NUR NEUINSTALLATIONEN)</strong></summary>

### 📜 Skript:

Dies ist der einfachste und empfohlene Weg für **Neuinstallationen**. Das Skript ist nicht dazu gedacht, jede Option im Flake zu ändern oder zusätzliche Pakete zu installieren. Es dient lediglich dazu, meine Konfiguration mit so wenig Risiko wie möglich zu installieren, damit Sie danach nach Herzenslust experimentieren können!

> **⚠️ WARNUNG:** Dieses Skript wird jedes existierende ~/mayankos-Verzeichnis komplett ersetzen. Verwenden Sie dies NICHT, wenn Sie MayankOS bereits installiert und konfiguriert haben.

Einfach kopieren und ausführen:

```bash
nix-shell -p git curl pciutils
```

Dann:

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### Nach Abschluss der Installation wird Ihre Umgebung wahrscheinlich fehlerhaft aussehen. Starten Sie einfach neu, und Sie sehen den Anmeldebildschirm.

</details>

<details>
<summary><strong> 🦽 Manueller Installationsprozess:  </strong></summary>

1. Führen Sie diesen Befehl aus, um sicherzustellen, dass Git & Vim installiert sind:

```bash
nix-shell -p git vim
```

2. Klonen Sie dieses Repository & wechseln Sie hinein:

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

3. Erstellen Sie den Host-Ordner für Ihre Maschine(n) wie folgt:

```bash
cp -r hosts/default hosts/<ihr-gewünschter-hostname>
```

4. Generieren Sie Ihre Hardware-Konfiguration:

```bash
nixos-generate-config --show-hardware-config > hosts/<ihr-gewünschter-hostname>/hardware.nix
```

5. Bearbeiten Sie `hosts/<ihr-gewünschter-hostname>/variables.nix` und `flake.nix`, um Ihren Hostnamen und Ihr Profil anzupassen.

6. Installieren Sie den Flake (ersetzen Sie `profile` durch `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid` oder `vm`):

```bash
sudo nixos-rebuild switch --flake .#profile
```

Wenn Sie die Konfiguration später neu erstellen möchten, können Sie den Befehl `mcli rebuild` oder den Alias `fr` verwenden.

</details>

### Besondere Anerkennungen:

Vielen Dank für eure gesamte Unterstützung

- KoolDots https://github.com/LinuxBeginnings
- JakKoolit https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## Viel Spaß damit!
