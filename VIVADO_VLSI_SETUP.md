# 🛠️ MayankOS: Vivado & VLSI Professional Setup Guide

This document preserves the exact steps and configurations used to set up Vivado and other VLSI tools on MayankOS. Use this as a reference for future installations.

---

## 1. Vivado via Distrobox (The "Safe" Way)

Vivado is installed inside a mutable **Distrobox** container (`vivado-env`) to prevent library conflicts with NixOS.

### Shell Aliases
Your system is configured with a powerful alias that handles environment variables (like Java AWT fixes for tiling WMs) and sources the Vivado settings automatically.

**Location**: `modules/home/zsh/default.nix` & `modules/home/bash.nix`
```bash
alias vivado="distrobox enter vivado-env -- bash -l -c 'export _JAVA_AWT_WM_NONREPARENTING=1; export QT_QPA_PLATFORM=xcb; source /home/mayank-anand/2025.2/Vivado/settings64.sh && vivado'"
```

### Installation Steps for New System:
1. **Create Container**: `distrobox create -n vivado-env -i ubuntu:22.04` (or your preferred base).
2. **Install Dependencies inside container**: `sudo apt update && sudo apt install libtinfo5 libncurses5 libx11-6 ...`
3. **Install Vivado**: Run the Xilinx installer inside the container and install to `/home/mayank-anand/2025.2/`.
### App Launchers (Exact Configurations)
To replicate your current environment, use these exact settings for your launchers.

#### 1. Vivado Tcl (Ghostty - Main)
- **Name**: `Xilinx Vivado Tcl (Ghostty)`
- **Exec**: `ghostty -e /home/mayank-anand/launch_vivado_tcl.sh`
- **Icon**: `/home/mayank-anand/2025.2/Vivado/doc/images/vivado_logo.png`
- **Script Needed**: Create `~/launch_vivado_tcl.sh` with this content:
```bash
#!/bin/bash
export TERM=xterm-256color
# Enter distrobox and run Vivado
distrobox enter vivado-env -- bash -l -c "source /home/mayank-anand/2025.2/Vivado/settings64.sh && vivado -mode tcl"
# Keep window open if it fails
if [ $? -ne 0 ]; then
  echo "Vivado failed to start. Check your paths and distrobox name."
  read -p "Press Enter to close..."
fi
```

#### 2. Vivado Tcl (Kitty - Stable Failsafe)
- **Name**: `Xilinx Vivado Tcl (Stable)`
- **Exec**: `kitty --title "Vivado Tcl Failsafe" -e distrobox enter vivado-env -- bash -l -c "export TERM=xterm-256color; source /home/mayank-anand/2025.2/Vivado/settings64.sh && vivado -mode tcl"`
- **Icon**: `/home/mayank-anand/2025.2/Vivado/doc/images/vivado_logo.png`

#### 3. Vivado GUI (Main IDE)
- **Name**: `Xilinx Vivado`
- **Exec**: `distrobox enter vivado-env -- bash -l -c "export _JAVA_AWT_WM_NONREPARENTING=1; export QT_QPA_PLATFORM=xcb; source /home/mayank-anand/2025.2/Vivado/settings64.sh && vivado"`
- **Icon**: `/home/mayank-anand/2025.2/Vivado/doc/images/vivado_logo.png`

---

### Permanent NixOS Setup (xdg.desktopEntries)
If you want these to be managed by Nix instead of manual `.desktop` files, add these to your `modules/home/xdg.nix`:

```nix
    desktopEntries = {
      vivado-gui = {
        name = "Xilinx Vivado";
        exec = "distrobox enter vivado-env -- bash -l -c \"export _JAVA_AWT_WM_NONREPARENTING=1; export QT_QPA_PLATFORM=xcb; source /home/mayank-anand/2025.2/Vivado/settings64.sh && vivado\"";
        icon = "/home/mayank-anand/2025.2/Vivado/doc/images/vivado_logo.png";
        terminal = false;
        categories = ["Development" "Engineering"];
      };

      vivado-tcl-ghostty = {
        name = "Xilinx Vivado Tcl (Ghostty)";
        exec = "ghostty -e distrobox enter vivado-env -- bash -l -c \"source /home/mayank-anand/2025.2/Vivado/settings64.sh && vivado -mode tcl\"";
        icon = "/home/mayank-anand/2025.2/Vivado/doc/images/vivado_logo.png";
        terminal = false;
        categories = ["Development" "Engineering"];
      };
    };
```

---

## 2. Advanced VLSI Tools (Python-based)

These tools are installed into dedicated virtual environments in `~/.local/share/` to keep your home directory clean and safe.

### Quick Installers
MayankOS provides built-in scripts to set up these environments:

| Tool | Install Command | Activation Command |
| :--- | :--- | :--- |
| **SiliconCompiler** | `install-sc` | `source ~/.local/share/siliconcompiler/venv/bin/activate` |
| **Hammer-VLSI** | `install-hammer` | `source ~/.local/share/hammer-vlsi/venv/bin/activate` |
| **Design Verification** | `install-dv` | `source ~/.local/share/dv-tools/venv/bin/activate` |

*Note: `install-dv` includes `cocotb`, `VUnit`, and constrained randomization tools.*

---

## 3. Terminal & TCL Integration

For TCL-based workflows (common in Vivado, Magic, and OpenROAD), MayankOS uses high-performance terminals:

- **Primary Terminals**: `ghostty` and `kitty`.
- **X11 Support**: Since Vivado is an X11 app, `xhost +si:localuser:$USER` is sometimes required if the container cannot open a window.
- **TCL Theming**: Terminals are configured to support the specific color escapes used by EDA tools.

### Running TCL Scripts
To run a TCL script (e.g., for synthesis) in a specific terminal:
```bash
# Example for Ghostty
ghostty -e "vivado -mode tcl -source myscript.tcl"
```

---

## 4. NixOS Host Dependencies

Even though Vivado runs in a container, it needs these host libraries for graphics and core functionality (already in your `packages.nix`):

- **Graphics**: `libGL`, `libGLU`.
- **X11**: `libX11`, `libXext`, `libXrender`, `libXi`, `libXtst`, `libXft`.
- **Legacy**: `ncurses5`, `zlib`, `glibc`.

---

## 5. Verification
To ensure everything is working correctly, you can run:
1. `vivado` - Launches the GUI.
2. `librelane --smoke-test` - Verifies the open-source RTL-to-GDSII flow.
3. `volare ls` - Checks your PDK installations (Sky130/GF180).

---

## 6. Profile Troubleshooting (Nvidia-Laptop)

If you decide to use the **Nvidia-Laptop** profile instead of AMD, you might encounter an error during rebuild stating that `intelID` is missing. 

### The Fix:
Open your host's variables file (e.g., `hosts/msi-modern14c7m/variables.nix`) and ensure these lines exist:

```nix
  # GPU Bus IDs (Required for Nvidia-Laptop / Hybrid profiles)
  # Use 'lspci | grep VGA' to find yours
  intelID = "0000:00:02.0"; 
  nvidiaID = "0000:01:00.0"; 
```

- **If you are installing as "AMD"**: You are 100% safe and do not need to do this.
- **If you are installing as "Nvidia-Laptop"**: Just be ready to add your specific IDs if the build fails.

**Everything is now ready for your professional VLSI workstation recovery! 🚀**
