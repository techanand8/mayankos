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
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
    config.common.default = "*";
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs;
    [
      inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
      inputs.yt-x.packages.${pkgs.stdenv.hostPlatform.system}.default
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
      verible
      haskellPackages.sv2v

      # --- VLSI & Hardware Engineering ---
      # HDL Simulation & Verification
      iverilog # Verilog simulation
      verilator # Fast cycle-accurate Verilog simulator
      gtkwave # Waveform viewer
      python3Packages.cocotb
      # Synthesis & Physical Design
      yosys # RTL Synthesis
      magic-vlsi # VLSI Layout tool
      netgen # LVS (Layout vs Schematic) tool
      graphviz # Required by Yosys 'show' command
      imagemagick # To convert Yosys output
      ghostscript # Often required for Yosys
      klayout # Layout viewer/editor
      openroad # Physical design flow
      surfer # Modern waveform viewer
      # Formal Verification
      #symbiyosys # Formal verification front-end renamed to sby
      sby
      z3 # SMT Solver
      yices # High-performance SMT solver
      # FPGA Implementation
      nextpnr # Universal place-and-route
      icestorm # Lattice iCE40 bitstream tools
      trellis # Lattice ECP5 bitstream tools
      dfu-util # Flashing utility for many FPGA dev boards
      # PCB & Schematic Design
      kicad # Professional PCB design suite
      ngspice # The standard general-purpose circuit simulator
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
      file-roller # Archive Manager
      fortune
      figlet
      gearlever # Manage / run Appimages
      htop # Simple Terminal Based System Monitor
      inxi # CLI System Information Tool
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
      usbutils # Good Tools For USB Devices
      upower # noctalia shell battery
      uwsm # Universal Wayland Session Manager (optional must be enabled)
      v4l-utils # Used For Things Like OBS Virtual Camera
      wget # Tool For Fetching Files With Links
      wl-clipboard
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
      gimp # Great Photo Editor
      gnome-software
      gnome-tweaks
      google-chrome
      microsoft-edge
      nwg-displays # configure monitor configs via GUI
      nwg-drawer # Application launcher for wayland
      nwg-dock-hyprland # Dock for hyprland
      nwg-menu # App menu for waybar
      pandoc # format MD to HTML for cheatsheet parser
      rhythmbox # audio player
      seahorse
      vim-full
      waypaper # Change wallpaper
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
