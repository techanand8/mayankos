{pkgs, ...}: {
  fonts = {
    # Allows Flatpak and other apps to see the Nix font directory
    fontDir.enable = true;
    enableDefaultPackages = true;

    packages = with pkgs; [
      dejavu_fonts
      fira-code
      fira-code-symbols
      font-awesome
      hackgen-nf-font
      ibm-plex
      inter
      jetbrains-mono
      material-icons
      maple-mono.NF
      minecraftia
      
      # Added from Downloads
      liberation_ttf
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts
      corefonts
      vista-fonts
      nerd-fonts.symbols-only
      nerd-fonts.fira-code
      ubuntu-classic

      nerd-fonts.im-writing
      nerd-fonts.blex-mono
      nerd-fonts.iosevka-term
      nerd-fonts.lilex
      nerd-fonts.ubuntu
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-mono
      noto-fonts
      noto-fonts-color-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-monochrome-emoji
      powerline-fonts
      roboto
      roboto-mono
      symbola
      terminus_font
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["Noto Serif" "Source Han Serif"];
        sansSerif = ["Noto Sans" "Source Han Sans"];
        monospace = ["JetBrains Mono"];
      };
    };
  };
}
