{
  pkgs,
  inputs,
  username,
  host,
  profile,
  ...
}: let
  inherit (import ../../hosts/${host}/variables.nix) gitUsername;
in {
  imports = [inputs.home-manager.nixosModules.home-manager];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "backup_hardware_fix";
    extraSpecialArgs = {inherit inputs username host profile pkgs;};
    users.${username} = {
      imports = [./../home];
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "23.11";
      };
    };
  };
  users.mutableUsers = true;
  users.users.${username} = {
    isNormalUser = true;
    description = "${gitUsername}";
    extraGroups = [
      "adbusers"
      "audio"
      "dialout"
      "docker" #access to docker as non-root
      "input"
      # "libvirtd" #Virt manager/QEMU access
      "lp"
      "networkmanager"
      "plugdev"
      "scanner"
      "video"
      "wheel" #sudo access
      "vboxusers" #Virtual Box
      "vmware"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  nix.settings.allowed-users = ["${username}"];
}
