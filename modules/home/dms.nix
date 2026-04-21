{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.dms.homeManagerModules.default
  ];

  programs.dms-shell.enable = true;

  # Additional packages often needed by DMS
  home.packages = with pkgs; [
    matugen
    cava
    socat
  ];
}
