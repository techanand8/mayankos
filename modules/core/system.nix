{
  host,
  username,
  ...
}: let
  vars = import ../../hosts/${host}/variables.nix;
  consoleKeyMap = vars.consoleKeyMap or "us";
in {
  nix = {
    settings = {
      download-buffer-size = 200000000;
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      substituters = [
        "https://hyprland.cachix.org"
        "https://openlane.cachix.org"
        "https://nix-cache.fossi-foundation.org"
        "https://noctalia.cachix.org"
      ];
      trusted-public-keys = [
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
        "openlane.cachix.org-1:qqdwh+QMNGmZAuyeQJTH9ErW57OWSvdtuwfBKdS254E="
        "nix-cache.fossi-foundation.org:3+K59iFwXqKsL7BNu6Guy0v+uTlwsxYQxjspXzqLYQs="
        "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
      ];
    };
  };

  system.autoUpgrade = {
    enable = true;
    dates = "Mon 04:00";
    flake = "/home/${username}/mayankos";
    flags = [
      "--update-input"
      "nixpkgs"
      "--update-input"
      "noctalia"
      "--update-input"
      "caelestia"
      "--update-input"
      "dms"
      "--commit-lock-file"
    ];
  };

  environment.shellInit = ''
    # This covers everything for your VLSI tools in Distrobox
    [ -n "$DISPLAY" ] && xhost +si:localuser:$USER || true
    [ -n "$WAYLAND_DISPLAY" ] && xhost +si:localuser:$USER || true
  '';

  environment.variables = {
    NIXOS_OZONE_WL = "1";
    MAYANKOS_VERSION = "2.6.1";
    MAYANKOS = "true";
    PDK_ROOT = "$HOME/.volare"; # For Sky130/GF180 PDKs managed by volare
    OPENLANE_ROOT = "/nix/store"; # Since tools are in the nix store
  };
  console.keyMap = "${consoleKeyMap}";
  system.stateVersion = "23.11"; # Do not change!
}
