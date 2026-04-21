{
  pkgs,
  inputs,
  lib,
  ...
}: let
  system = pkgs.stdenv.hostPlatform.system;
  caelestiaPkg = inputs.caelestia.packages.${system}.caelestia-shell;
  configDir = "${caelestiaPkg}/share/caelestia-shell";
in {
  # Install the Caelestia package
  home.packages = [
    caelestiaPkg
    pkgs.caelestia-cli
    pkgs.quickshell # Ensure quickshell is available for the service
    pkgs.kdePackages.kirigami
    pkgs.kdePackages.kirigami-addons
    pkgs.kdePackages.qqc2-desktop-style
    pkgs.kdePackages.breeze
  ];

  # Seed the configuration
  home.activation.seedCaelestiaShellCode = lib.hm.dag.entryAfter ["writeBoundary"] ''
    set -eu
    DEST="$HOME/.config/quickshell/caelestia-shell"
    SRC="${configDir}"

    if [ ! -d "$DEST" ]; then
      $DRY_RUN_CMD mkdir -p "$HOME/.config/quickshell"
      $DRY_RUN_CMD cp -R "$SRC" "$DEST"
      $DRY_RUN_CMD chmod -R u+rwX "$DEST"
    fi
  '';
}
