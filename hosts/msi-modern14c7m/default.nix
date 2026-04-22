{config, pkgs, ...}: {
  imports = [
    ./hardware.nix
    ./host-packages.nix
#    ../../modules/core
  ];

  boot.extraModulePackages = [ config.boot.kernelPackages.msi-ec ];
  boot.kernelModules = [ "msi-ec" ];
}
