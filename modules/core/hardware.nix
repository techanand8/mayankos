{pkgs, ...}: {
  hardware = {
    sane = {
      enable = true;
      extraBackends = [pkgs.sane-airscan];
      disabledDefaultBackends = ["escl"];
    };
    logitech.wireless.enable = false;
    logitech.wireless.enableGraphical = false;
    graphics.enable = true;
    enableRedistributableFirmware = true;
    keyboard.qmk.enable = true;
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };
  services.udev.packages = [
    (pkgs.writeTextFile {
      name = "xilinx-udev-rules";
      text = ''
        SUBSYSTEM=="usb", ATTR{idVendor}=="03fd", MODE="666"
        SUBSYSTEM=="usb", ATTR{idVendor}=="0403", MODE="666"
        SUBSYSTEM=="usb", ATTR{idVendor}=="d4ee", MODE="666"
      '';
      destination = "/etc/udev/rules.d/52-xilinx-digilent-usb.rules";
    })
  ];
  boot.kernelModules = ["uinput"];
  local.hardware-clock.enable = false;
}
