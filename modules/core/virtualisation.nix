{ pkgs, config, lib, ... }: {
  # Only enable either docker or podman -- Not both
  virtualisation = {
    docker = {
      enable = lib.mkDefault false;
    };

    podman = {
      enable = lib.mkDefault true;
      dockerCompat = true;
    };

    # libvirtd = {
    #   enable = false;
    # };

    virtualbox.host = {
      enable = lib.mkDefault false;
      enableExtensionPack = true;
    };

    vmware.host = {
      enable = lib.mkDefault false;
    };
  };

  # Extra kernel modules for VMware and AMD hardware acceleration
  boot.kernelModules = pkgs.lib.mkIf config.virtualisation.vmware.host.enable [ 
    "vmmon" 
    "vmnet" 
    "vmw_balloon" 
    "kvm-amd" 
  ];

  programs = {
    # virt-manager.enable = false;
  };

  environment.systemPackages = with pkgs; [
    # virt-viewer # View Virtual Machines
    lazydocker
    docker-client
    # Libraries needed for VMware to avoid AppLoader warnings
    (lib.mkIf config.virtualisation.vmware.host.enable libaio)
    (lib.mkIf config.virtualisation.vmware.host.enable pcsclite)
    (lib.mkIf config.virtualisation.vmware.host.enable ntfs3g)
  ];
}
