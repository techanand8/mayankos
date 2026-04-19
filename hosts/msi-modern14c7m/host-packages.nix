{
  pkgs,
  config,
  ...
}: {
  environment.systemPackages = with pkgs; [
    #  Add local pacakaged here
  ];
  # Add host specific flatpaks here
  services = {
    flatpak = {
      packages = [
      ];
    };
  };

  # Enable VMware Workstation
  virtualisation.vmware.host.enable = true;
}
