{
  inputs,
  pkgs,
  host,
  ...
}: let
  vars = import ../../hosts/${host}/variables.nix;
  inherit (vars) barChoice;
  # Bar-specific packages
  barPkgs =
    if barChoice == "noctalia"
    then
      with pkgs; [
        matugen # color palette generator needed for noctalia-shell
        app2unit # launcher for noctalia-shell
        gpu-screen-recorder # needed for noctalia-shell
      ]
    else if barChoice == "caelestia"
    then
      with pkgs; [
        matugen
        gpu-screen-recorder
      ]
    else if barChoice == "dms"
    then
      with pkgs; [
        matugen
        cava
      ]
    else [];
in {
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    firefox = {
      enable = true;
      # nativeMessagingHosts.packages = [pkgs.pywalfox-native];
    }; # Firefox is not installed by default
    hyprland = {
      enable = true; # set this so desktop file is created
      withUWSM = false;
    };
    niri = {
      enable = true;
      package = inputs.niri.packages.${pkgs.stdenv.hostPlatform.system}.niri-unstable;
    };
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    hyprlock.enable = true;
    localsend = {
      enable = true;
      openFirewall = true;
    };
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    ssh.askPassword = pkgs.lib.mkForce "${pkgs.kdePackages.ksshaskpass}/bin/ksshaskpass";
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        libuuid
        stdenv.cc.cc
        zlib
        libX11
        fuse3
        icu
        nss
        openssl
        curl
        expat
      ];
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.kdePackages.xdg-desktop-portal-kde
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gnome
    ];
    config = {
      common.default = "*";
      niri.default = ["gnome" "gtk"];
      hyprland.default = ["hyprland" "gtk"];
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs;
    [
      inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
      inputs.yt-x.packages.${pkgs.stdenv.hostPlatform.system}.default
      qt6.qtmultimedia
    ]
    ++ barPkgs
    ++ [
      # Development Tools
      alejandra # nix formatter
      arduino-ide
      vscode-fhs
      bat
      binutils
      cmake
      clang
      esptool
      fzf
      gcc
      gdb
      gnumake
      jq
      llvm
      man-pages
      man-pages-posix
      nodejs_24
      python3
      (python3.withPackages (ps:
        with ps; [
          pip
          virtualenv
          pyserial
          numpy
          matplotlib
        ]))
      screen
      uv
      zoxide

      # Language Servers & Linters
      bash-language-server
      lua-language-server
      svls
      sv-lang # SystemVerilog compiler and linter
      surelog # SystemVerilog pre-processor, parser, elaborator
      veridian # SystemVerilog Language Server
      svlint # SystemVerilog linter
      vhdl-ls # VHDL Language Server
      verible
      haskellPackages.sv2v

      # --- VLSI & Hardware Engineering ---
      # HDL Simulation & Verification
      ghdl # VHDL simulator
      nvc # nVHDL compiler/simulator
      iverilog # Verilog simulation
      verilator # Fast cycle-accurate Verilog simulator
      gtkwave # Waveform viewer
      surfer # Modern waveform viewer
      (gaw.overrideAttrs (o: {
        NIX_CFLAGS_COMPILE = (o.NIX_CFLAGS_COMPILE or "") + " -std=gnu89 -Wno-error=incompatible-pointer-types -Wno-error=implicit-function-declaration -fpermissive";
      })) # Fast spice waveform viewer
      python3Packages.wavedrom # Digital timing diagrams
      python3Packages.amaranth # Python-based hardware description
      python3Packages.cocotb
      python3Packages.verilogae # Verilog-A tool
      python3Packages.pyverilog # Python-based Verilog toolkit
      fusesoc # Package manager and build system for HDL
      python3Packages.edalize # Abstraction layer for EDA tools
      haskellPackages.netlist-to-vhdl # Netlist to VHDL converter
      onnxruntime # AI hardware verification
      python3Packages.onnx # AI hardware verification
      # Synthesis & Physical Design
      yosys # RTL Synthesis
      yosys-ghdl # Yosys with GHDL plugin for VHDL synthesis
      netlistsvg # Draw beautiful SVGs from Yosys JSON output
      inputs.nix-eda.packages.${pkgs.stdenv.hostPlatform.system}.yosys-synlig-sv # Full SystemVerilog synthesis support for Yosys
      inputs.volare.packages.${pkgs.stdenv.hostPlatform.system}.volare # PDK manager (SkyWater 130, GF180, etc.)
      xschem # Schematic capture EDA tool
      magic-vlsi # VLSI Layout tool
      netgen # LVS (Layout vs Schematic) tool
      graphviz # Required by Yosys 'show' command
      xdot # Visualizer for Yosys 'show' command
      imagemagick # To convert Yosys output
      ghostscript # Often required for Yosys
      doxygen # Documentation generator
      doxygen_gui # GUI for Doxygen
      klayout # Layout viewer/editor
      inputs.nix-eda.packages.${pkgs.stdenv.hostPlatform.system}.gdsfactory # Advanced layout and PDM flow
      openroad # Physical design flow (foundation of OpenLane)
      inputs.openlane.packages.${pkgs.stdenv.hostPlatform.system}.default # OpenLane 2 (requires OpenLane Cachix)
      inputs.openlane.packages.${pkgs.stdenv.hostPlatform.system}.opensta # Static Timing Analysis
      chisel # Scala-based HDL
      # Formal Verification
      sby
      cvc4 # SMT Solver
      bitwuzla # High-performance SMT solver
      z3 # SMT Solver
      yices # High-performance SMT solver
      # FPGA Implementation
      nextpnr # Universal place-and-route
      icestorm # Lattice iCE40 bitstream tools
      trellis # Lattice ECP5 bitstream tools
      openfpgaloader # Universal FPGA programmer
      dfu-util # Flashing utility for many FPGA dev boards
      pulseview # GUI for logic analyzers
      sigrok-cli # CLI for logic analyzers
      # PCB & Schematic Design
      kicad # Professional PCB design suite
      ngspice # The standard general-purpose circuit simulator
      (xyce.override { enableDocs = false; enableTests = false; }) # High-performance parallel SPICE simulator
      # Embedded & Hardware Core
      avrdude # Utility to burn code to AVR
      minicom # Serial communication
      binwalk # Analyze firmware
      rars # RISC-V Assembler and Runtime Simulator
      # Architecture & Emulation
      qemu # Full system emulation
      dtc # Device Tree Compiler
      elfutils # ELF file analysis
      spike # Official RISC-V ISA simulator
      pkgsCross.riscv64-embedded.riscv-pk
      pkgsCross.riscv64-embedded.buildPackages.gcc
      pkgsCross.riscv64-embedded.buildPackages.gdb
      gcc-arm-embedded
      pkgsCross.arm-embedded.buildPackages.gcc

      # --- Linux & Container Utilities ---
      distrobox
      xhost

      # System Utilities
      amfora # Fancy Terminal Browser For Gemini Protocol
      appimage-run # Needed For AppImage Support
      btop
      brightnessctl # For Screen Brightness Control
      cliphist # Clipboard manager using rofi menu
      cmatrix # Matrix Movie Effect In Terminal
      cowsay # Great Fun Terminal Program
      duf # Utility For Viewing Disk Usage In Terminal
      dysk # Disk space util nice formattting
      eza # Beautiful ls Replacement
      fastfetch
      fd # Simple, fast and user-friendly alternative to 'find'
      file-roller # Archive Manager
      fortune
      figlet
      gearlever # Manage / run Appimages
      htop # Simple Terminal Based System Monitor
      inxi # CLI System Information Tool
      just # A handy runner for your tasks
      killall # For Killing All Instances Of Programs
      libnotify # For Notifications
      libusb1
      libusb-compat-0_1
      lm_sensors # Used For Getting Hardware Temps
      lolcat # Add Colors To Your Terminal Command Output
      lshw # Detailed Hardware Information
      lsd
      mdcat # CLI markdown parser
      ncdu # Disk Usage Analyzer With Ncurses Interface
      nixfmt # Nix Formatter
      onefetch # provides zsaneyos build info on current system
      pavucontrol # For Editing Audio Levels & Devices
      pciutils # Collection Of Tools For Inspecting PCI Devices
      pkg-config # Wrapper Script For Allowing Packages To Get Info On Others
      playerctl # Allows Changing Media Volume Through Scripts
      psmisc
      ripgrep # Improved Grep
      socat # Needed For Screenshots
      starship
      tealdeer # Fast implementation of tldr
      tree # List contents of directories in a tree-like format
      usbutils # Good Tools For USB Devices
      upower # noctalia shell battery
      vulkan-tools # To verify Vulkan support
      libva-utils # To verify video acceleration
      clinfo # To verify OpenCL support
      uwsm # Universal Wayland Session Manager (optional must be enabled)
      v4l-utils # Used For Things Like OBS Virtual Camera
      wget # Tool For Fetching Files With Links
      wl-clipboard
      wtype # Wayland keyboard simulator
      xclip

      # Archives
      _7zz
      rar
      gnutar
      p7zip
      peazip
      unrar
      unzip

      # GUI / Desktop
      brave # Brave Browser
      cpufetch
      screenfetch
      discord # Stable client
      discord-canary # beta  client
      docker-compose # Allows Controlling Docker From A Single File
      drawio # Creating logic diagrams
      eog # For Image Viewing
      flameshot # Powerful screenshot tool
      geeqie # Feature-rich image viewer with rotation and metadata
      gimp # Great Photo Editor
      gnome-software
      gnome-tweaks
      google-chrome
      imv # Command-line image viewer (fast, supports rotation)
      microsoft-edge
      nwg-displays # configure monitor configs via GUI
      nwg-drawer # Application launcher for wayland
      nwg-dock-hyprland # Dock for hyprland
      nwg-menu # App menu for waybar
      pandoc # format MD to HTML for cheatsheet parser
      rhythmbox # audio player
      seahorse
      viewnior # Fast and simple image viewer with rotation
      vim-full
      waypaper # Change wallpaper
      zathura # Modern document viewer (includes plugins)
      zathuraPkgs.zathura_pdf_mupdf # Specific PDF support
      zed-editor

      # Media / Entertainment
      ani-cli
      cava # Console Audio Visualizer
      chafa
      cheese # Classic GNOME camera app
      gnome-video-effects # Effects for cheese
      evtest
      ffmpeg # Terminal Video / Audio Editing
      kdePackages.kdenlive
      mpv # Incredible Video Player
      obs-studio
      python311Packages.pipx
      snapshot # Modern GNOME camera app (best for Wayland)
      spotify
      telegram-desktop
      vlc
      yt-dlp
      ytmdl # Tool For Downloading Audio From YouTube
      ueberzugpp

      # Productivity / Education
      libreoffice-fresh
      onlyoffice-desktopeditors
      texlive.combined.scheme-full
      wpsoffice
      xournalpp

      # Eye Candy / Misc
      gum
      pywal
      rofi
      xwayland-satellite

      gemini-cli
      open-vm-tools
      yazi
      ghostty
      kitty
      pywalfox-native

      # Legacy libraries Vivado often looks for on the host
      ncurses5
      zlib
      glibc

      # Core graphics support (The container uses these from the host)
      libGL
      libGLU

      # Individual X11 libraries (Correct naming convention)
      libX11
      libXext
      libXrender
      libXi
      libXtst
      libXft

      # Tools for debugging hardware/connection
      usbutils
      pciutils
    ];
}
