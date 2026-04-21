{
  pkgs,
  username,
  ...
}: {
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      dates = "Sun 03:00";
      extraArgs = "--keep-since 7d --keep 5";
    };
    flake = "/home/${username}/mayankos";
  };

  environment.systemPackages = with pkgs; [
    nix-output-monitor
    nvd
  ];
}
