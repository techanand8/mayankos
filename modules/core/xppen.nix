{ pkgs, ... }:

let
  xppen-v4 = import ./xppen-v4.nix { inherit pkgs; };
  
  # This creates the actual .desktop file
  pentablet-shortcut = pkgs.makeDesktopItem {
    name = "pentablet";
    desktopName = "XP-Pen Pentablet";
    exec = "pentablet";
    icon = "input-tablet";
    comment = "Driver for Deco Mini 7 V2";
    categories = [ "Settings" "HardwareSettings" ];
    terminal = false;
  };
in
{
  # 1. Hardware Detection (The Fix for 28bd:0948)
  system.activationScripts.xppen-patch = {
    text = ''
      mkdir -p /usr/lib/pentablet
      ln -sfn ${xppen-v4}/lib/pentablet/conf /usr/lib/pentablet/conf
      ln -sfn ${xppen-v4}/lib/pentablet/resource /usr/lib/pentablet/resource
    '';
  };

  environment.systemPackages = [ 
    xppen-v4 
    pentablet-shortcut
  ];

  # Load the hardware rules from the driver so the tablet is recognized
  services.udev.packages = [ xppen-v4 ];

  # 2. Keep the Autostart Service
  systemd.user.services.pentablet-autostart = {
    description = "Launch XP-Pen Driver on Login";
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
    serviceConfig = {
      # Improved for Wayland/XWayland compatibility
      ExecStart = "${pkgs.bash}/bin/bash -c 'export QT_QPA_PLATFORM=xcb; ${xppen-v4}/bin/pentablet'";
      Restart = "on-failure";
      RestartSec = "10s";
    };
  };
}
