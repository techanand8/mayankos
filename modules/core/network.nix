{ pkgs, host, options, lib, ... }: 

let
  vars = import ../../hosts/${host}/variables.nix;
in {
  networking = {
    hostName = "${host}";
    # Pulls hostId from variables.nix, defaults to a dummy if missing
    hostId = vars.hostId or "5ab03f50"; 
    networkmanager.enable = true;
    
    # Ensures your MSI clock stays synced for your project logs
    timeServers = options.networking.timeServers.default ++ [ "pool.ntp.org" ];
    
    firewall = {
      enable = true;
      # 🛡️ Security Hardened: Only open essential ports.
      # Added 1714-1764 for KDE Connect (Sync your phone with MayankOS)
      allowedTCPPortRanges = [ 
        { from = 1714; to = 1764; } 
      ];
      allowedUDPPortRanges = [ 
        { from = 1714; to = 1764; } 
      ];
      # Removed ports 22, 80, 443, 8080 from global list for security.
      # Use per-service firewall settings instead.
      allowedTCPPorts = [ 59010 59011 ];
      allowedUDPPorts = [ 59010 59011 ];
    };
  };

  # Set your Time Zone and Indian Locales here so they are system-wide
  time.timeZone = "Asia/Kolkata";
  i18n.defaultLocale = "en_IN";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # Enable Bluetooth (Required for many VLSI peripherals)
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    bluez
    bluez-tools
  ];
}
