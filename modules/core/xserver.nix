{ host, pkgs, ... }: let
  vars = import ../../hosts/${host}/variables.nix;
  keyboardLayout = vars.keyboardLayout or "us";
  keyboardVariant = vars.keyboardVariant or "";

  # --- Your existing Keyboard Logic ---
  usVariants = ["dvorak" "colemak" "workman" "intl" "us-intl" "altgr-intl"];
  normalizeUSVariant = v: if v == "us-intl" then "intl" else v;
  layoutFromLayout = if builtins.elem keyboardLayout usVariants then "us" else keyboardLayout;
  variantFromLayout = if builtins.elem keyboardLayout usVariants then normalizeUSVariant keyboardLayout else "";
  layoutFromVariant = if builtins.elem keyboardVariant usVariants then "us" else layoutFromLayout;
  variantFinal = if builtins.elem keyboardVariant usVariants then normalizeUSVariant keyboardVariant else if variantFromLayout != "" then variantFromLayout else keyboardVariant;

  xkbLayout = layoutFromVariant;
  xkbVariant = variantFinal;
in {
  services.xserver = {
    enable = true; # CHANGED FROM FALSE TO TRUE
    xkb = {
      layout = xkbLayout;
      variant = xkbVariant;
    };
  };

  # Enable the KDE Plasma Desktop Environment
  # services.desktopManager.plasma6.enable = true;

  # Enable SDDM for the Login Screen
#  services.displayManager.sddm = {
 #   enable = true;
  #  wayland.enable = true; # Better performance for your AMD Ryzen
  #};

  # Essential packages for a smooth KDE experience
  # environment.systemPackages = with pkgs; [
  #   kdePackages.plasma-nm       # Network Manager applet
  #   kdePackages.spectacle       # Screenshot tool (Great for VLSI reports)
  #   kdePackages.kate            # Advanced text editor
  # ];
}
