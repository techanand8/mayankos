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
    (lib.mkIf config.virtualisation.vmware.host.enable libcanberra-gtk3)
    (lib.mkIf config.virtualisation.vmware.host.enable libcanberra)
    (lib.mkIf config.virtualisation.vmware.host.enable libsecret)
    (lib.mkIf config.virtualisation.vmware.host.enable libXcursor)
    (lib.mkIf config.virtualisation.vmware.host.enable libXinerama)
    (lib.mkIf config.virtualisation.vmware.host.enable libXi)
    (lib.mkIf config.virtualisation.vmware.host.enable libXrender)
    (lib.mkIf config.virtualisation.vmware.host.enable libXcomposite)
    (lib.mkIf config.virtualisation.vmware.host.enable libXdamage)
    (lib.mkIf config.virtualisation.vmware.host.enable libXfixes)
    (lib.mkIf config.virtualisation.vmware.host.enable libXtst)
  ];
}
