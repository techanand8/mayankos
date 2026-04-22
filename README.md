[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md)

**Note: Please forgive any linguistic errors in this translation; I have provided it in your language so you can better understand the documentation and the project. For technical precision, please refer to the English or Spanish versions.**

<div align="center">

## MayankOS 🟰 Best ❄️ NixOS Configs

\*\* Updated: April 22nd, 2026

MayankOS is a powerful and elegant way of reproducing my NixOS configuration on any system. Built with the flexibility and inspiration of the **ZaneyOS** project, it provides a highly customized environment including wallpapers, scripts, applications, and optimized hardware support.

## 🚀 New Features & Hardware Support (v2.6.1)

This version brings significant optimizations and support for modern hardware:

### 💻 MSI Modern 14 C7M & AMD 7000 Series
- **Optimized AMD 7530U Performance**: Fully utilizes `amd-pstate-epp` and `auto-cpufreq` for a perfect balance between power and battery life.
- **Battery Health Management**: Native support for **MSI Battery Thresholds** via `msi-ec`, protecting your battery by limiting charging to 80% when plugged in.
- **Advanced Power Scaling**: Automatic switching between `performance` and `powersave` modes based on power state.
- **Next-Gen Graphics**: Full `amdgpu` support with VA-API hardware acceleration, ROCm, and Vulkan tools pre-configured.

### 🎨 Diverse Shell Experiences
Choose your preferred desktop experience by setting `barChoice` in `variables.nix`:
- **Noctalia**: A modern, feature-rich shell with integrated system controls.
- **Caelestia**: An elegant and lightweight alternative.
- **DMS (DankMaterialShell)**: A material-design inspired shell for a sleek, modern look.
- **Waybar**: The classic, highly customizable status bar.

### 🔧 System Enhancements
- **Latest Linux Kernel**: Now running on the **7.x kernel** line for the best hardware compatibility.
- **Enhanced Niri Support**: Full integration for the Niri scrollable-tiling compositor.
- **Improved Virtualization**: Optimized support for VMware and other virtualization platforms.

## 🤝 Relationship with ZaneyOS

MayankOS is a proud descendant of the legendary [ZaneyOS](https://gitlab.com/Zaney/zaneyos.git) project. While it shares the same spirit of making NixOS accessible and beautiful, MayankOS has evolved into a distinct distribution with its own focus:

### 🌟 What makes MayankOS different?
- **Modern Hardware Focus**: Unlike the more general approach of ZaneyOS, MayankOS includes deep optimizations for the latest **AMD Ryzen 7000 series** and **MSI laptops** (including battery health management).
- **Expanded Shell Ecosystem**: We have moved beyond just Waybar to include full support for **Noctalia**, **Caelestia**, and **DMS**, giving you more choices for your desktop workflow.
- **Latest Kernel Strategy**: We prioritize the `linuxPackages_latest` (7.x+) to ensure the newest hardware features work immediately.
- **Expanded Compositor Options**: We have integrated full support for the **Niri scrollable-tiling compositor**, providing a modern alternative to Hyprland for users who prefer a scrollable tiling workflow.
- **Enhanced Internationalization**: Support for 13+ languages to bring the NixOS experience to a global audience.

If you are looking for the original inspiration, please visit the [Official ZaneyOS GitLab](https://gitlab.com/Zaney/zaneyos.git). MayankOS takes that incredible foundation and pushes it further for users who need cutting-edge hardware support and a more diverse range of desktop shells.

## 🏗️ Installation: Automatic vs. Manual

MayankOS offers two primary ways to get started:
1. **Automatic Script (Recommended for New Users)**: A fast, one-command install that handles everything for you. This is the quickest way to get a working desktop.
2. **Manual Installation**: For users who want complete control over every aspect of their system. Manual installation is better if you want to customize your tools *before* your first rebuild.

## ⚡ Professional VLSI & Hardware Engineering Workstation

MayankOS is specifically designed to be a high-performance, professional workstation for **VLSI and Hardware Engineering**. 

- **Why it's perfect**: It comes pre-configured with a comprehensive suite of tools for:
  - **HDL Simulation**: `iverilog`, `verilator`, `gtkwave`.
  - **Synthesis & Physical Design**: `yosys`, `magic-vlsi`, `klayout`, `openroad`.
  - **FPGA & Embedded Development**: `nextpnr`, `icestorm`, `dfu-util`, `qemu`.
  - **PCB & Schematic Design**: `kicad`, `ngspice`.
- **How to customize**: If you do NOT need these tools, you can simply comment out or remove the `# --- VLSI & Hardware Engineering ---` block in `modules/core/packages.nix` before running your `nixos-rebuild`.
- **Future Ready**: This is just the beginning; more specialized VLSI and EDA tools are planned for future updates to make MayankOS the ultimate platform for hardware designers.

## 🛠️ Custom Hardware & Host Setup Guide

1. **Creating a New Host**:
   - Copy the `hosts/default` folder to a new folder named after your computer (e.g., `cp -r hosts/default hosts/my-laptop`).
2. **Generating Your Hardware Config**:
   - Run `nixos-generate-config --show-hardware-config > hosts/your-hostname/hardware.nix` to automatically detect your specific hardware (drives, CPU, etc.).
3. **Selecting Your Profile**:
   - Open `flake.nix` and set the `profile` variable to match your hardware (options: `amd`, `intel`, `nvidia`, `nvidia-laptop`, `amd-nvidia-hybrid`, or `vm`).
4. **Configuring Variables**:
   - Edit `hosts/your-hostname/variables.nix` to set your screen resolution, preferred shell (`barChoice`), and other personal settings.
5. **Support for Other Laptops**:
   - If you have a specialized laptop like an MSI, you can look at `hosts/msi-modern14c7m/default.nix` for examples of how to add kernel modules like `msi-ec`.
6. **Final Rebuild**:
   - Run `sudo nixos-rebuild switch --flake .#your-profile` to apply everything.

## Important Note on Noctalia

> The first time you login, screen will be blank SUPER + SHIFT + C to exit.
> Login in, noctalia will start from then on

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 More Screenshots</strong></summary>

### Waybar Themes

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Noctalia Shell Integration

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### Additional Features

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### Hardware Support (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### Cheatsheets and Guides

- Nix Beginner Guide: [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Hyprland Customization Guide:
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)

#### 🍖 Requirements

- You must be running on NixOS, version 24.05+.
- The `mayankos` folder (this repo) is expected to be in your home directory.
- You must have installed NIXOS using **GPT** parition with booting with
  **UEFI**.
- ** 500MB minimum /boot partition required. **
- Systemd-boot is what is supported.
- For GRUB you will have to brave the internet for a how-to. ☺️
- Manually editing your host specific files.
- The host is the specific computer your installing on.

#### 🎹 Pipewire & Notification Menu Controls

- We are using the latest and greatest audio solution for Linux. Not to mention
  you will have media and volume controls in the notification center available
  in the top bar.

#### 🏇 Optimized Workflow & Advanced Window Management

- **Hyprland Support**: Default tiling window manager for increased elegance and efficiency.
- **Niri Support**: Now includes full support for Niri, a scrollable-tiling Wayland compositor. Toggle it via `niriEnable` in your `variables.nix`.
- **KDE Plasma (Optional)**: Support for KDE Plasma 6 is available but disabled by default.
- No massive NeoVIM project here, using `nixvim` for an
  incredible NeoVIM setup. With language support already added in.

#### 🖥️ Multi Host & User Configuration

- You can define separate settings for different host machines and users.
- Easily specify extra packages for your users in the `modules/core/user.nix`
  file.
- Easy to understand file structure and simple, but encompassing, configuration.

#### 👼 An Incredible Community Focused On Support

- The entire idea of MayankOS is to make NixOS an approachable space.
- NixOS is actually a great community that you will want to be a part of.
- Many people who are patient and happy to spend their free time helping you are
  running MayankOS.
- Feel free to reach out on the Discord for any help with anything.

#### 📦 How To Install Packages?

- You can search the [Nix Packages](https://search.nixos.org/packages?) &
  [Options](https://search.nixos.org/options?) pages for what a package may be
  named or if it has options available that take care of configuration hurdles
  you may face.
- To add a package there are the sections for it in `modules/core/packages.nix`
  and `modules/core/user.nix`. One is for programs available system wide and the
  other for your users environment only.

#### 🐧 Switching Desktop Environments

MayankOS supports multiple environments:
- **Hyprland**: Enabled by default.
- **Niri**: Enable it by setting `niriEnable = true;` in your host's `variables.nix`.
- **KDE Plasma**: To enable KDE Plasma, go to `modules/core/xserver.nix` and uncomment the `services.desktopManager.plasma6.enable = true;` line and the associated `environment.systemPackages` block.

#### 🙋 Having Issues / Questions?

- Please feel free to raise an issue on the repo, please label a feature request
  with the title beginning with [feature request], thank you!
- Contact us on [Discord](https://discord.gg/XhZmNTnhtp) as well, for a potentially
  faster response.

# Hyprland Keybindings

Below are the keybindings for Hyprland, formatted for easy reference. The right
column shows keybindings that are specific to **Noctalia Shell** (only available
when `barChoice = "noctalia"`).

<table>
<tr>
<td width="50%">

## Standard Keybindings

### Application Launching

- `$modifier + Return` → Launch `terminal`
- `$modifier + Tab` → Toggle `Quickshell Overview` (workspace overview with live previews)
- `$modifier + K` → List keybinds
- `$modifier + Shift + W` → Open `web-search`
- `$modifier + Alt + W` → Open `wallsetter`
- `$modifier + Shift + N` → Run `swaync-client -rs`
- `$modifier + W` → Launch `Web Browser`
- `$modifier + Y` → Open `kitty` with `yazi`
- `$modifier + E` → Open `emopicker9000`
- `$modifier + S` → Take a screenshot
- `$modifier + Shift + D` → Open `Discord`
- `$modifier + O` → Launch `OBS Studio`
- `$modifier + Alt + C` → Color Picker
- `$modifier + G` → Open `GIMP`
- `$modifier + T` → Toggle terminal with `pypr`
- `$modifier + Alt + M` → Open `pavucontrol`

### Window Management

- `$modifier + Q` → Kill active window
- `$modifier + P` → Toggle pseudo tiling
- `$modifier + Shift + I` → Toggle split mode
- `$modifier + F` → Toggle fullscreen
- `$modifier + Shift + F` → Toggle floating mode
- `$modifier + Alt + F` → Float all windows
- `$modifier + Shift + C` → Exit Hyprland

### Window Movement

- `$modifier + Shift + ← / → / ↑ / ↓` → Move left/right/up/down
- `$modifier + Shift + H / L / K / J` → Move left/right/up/down
- `$modifier + Alt + ← / → / ↑ / ↓` → Swap left/right/up/down

### Focus Movement

- `$modifier + ← / → / ↑ / ↓` → Move focus left/right/up/down
- `$modifier + H / L / K / J` → Move focus left/right/up/down

### Workspaces

- `$modifier + 1-10` → Switch to workspace 1-10
- `$modifier + Shift + Space` → Move window to special workspace
- `$modifier + Space` → Toggle special workspace
- `$modifier + Shift + 1-10` → Move window to workspace 1-10
- `$modifier + Control + → / ←` → Switch workspace forward/backward

### Window Cycling

- `Alt + Tab` → Cycle to next window / Bring active to top

</td>
<td width="50%">

## 🎨 Noctalia Shell Keybindings

_Available when `barChoice = "noctalia"` in `variables.nix`_

- `$modifier + D` → Launcher Toggle
- `$modifier + Shift + Return` → Launcher Toggle
- `$modifier + M` → Notifications Menu
- `$modifier + V` → Clipboard Manager
- `$modifier + Alt + P` → Settings Panel
- `$modifier + Shift + ,` → Settings Panel
- `$modifier + Alt + L` → Lock Screen
- `$modifier + Shift + Y` → Wallpaper Manager
- `$modifier + X` → Power Menu
- `$modifier + C` → Control Center
- `$modifier + Ctrl + R` → Screen Recorder

### Rofi Launcher (Waybar Mode)

_Available when `barChoice = "waybar"` in `variables.nix`_

- `$modifier + D` → Launch Rofi Launcher
- `$modifier + Shift + Return` → Launch Rofi Launcher

### Other Features

- `$modifier + Shift + Return` (Waybar) → Application Launcher
- `$modifier + V` (Waybar) → Clipboard History via `cliphist`

</td>
</tr>
</table>

## Installation:

> **⚠️ IMPORTANT:** These installation methods are for **NEW INSTALLATIONS
> ONLY**. If you already have MayankOS installed and want to upgrade to v2.4, see
> the [Upgrade Instructions](#upgrading-from-mayankos-23-to-24) below. Note:
> There is an issue with upgrade script. It's been removed until it's fixed.

<details>
<summary><strong> ⬇️ Install with script (NEW INSTALLATIONS ONLY)</strong></summary>

### 📜 Script:

This is the easiest and recommended way of starting out for **new
installations**. The script is not meant to allow you to change every option
that you can in the flake or help you install extra packages. It is simply here
so you can get my configuration installed with as little chances of breakages
and then fiddle to your hearts content!

> **⚠️ WARNING:** This script will completely replace any existing ~/mayankos
> directory. Do NOT use this if you already have MayankOS installed and
> configured.

Simply copy this and run it:

```bash
nix-shell -p git curl pciutils
```

Then:

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### After the install completes your environment will probably look broken. Just reboot and you will see the login screen.

</details>

<details>
<summary><strong> 🦽 Manual install process:  </strong></summary>

1. Run this command to ensure Git & Vim are installed:

```bash
nix-shell -p git vim
```

2. Clone this repo & enter it:

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

3. Create the host folder for your machine(s) like so:

```bash
cp -r hosts/default hosts/<your-desired-hostname>
```

4. Generate your hardware configuration:

```bash
nixos-generate-config --show-hardware-config > hosts/<your-desired-hostname>/hardware.nix
```

5. Edit `hosts/<your-desired-hostname>/variables.nix` and `flake.nix` to match your hostname and profile.

6. Install the flake (replace `profile` with `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid`, or `vm`):

```bash
sudo nixos-rebuild switch --flake .#profile
```

Now when you want to rebuild the configuration you can use the `mcli rebuild` command or the `fr` alias.

</details>

### Special Recognitions:

Thank you for all your assistance

- KoolDots  https://github.com/LinuxBeginnings
- JakKoolit  https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## Hope you enjoy!
