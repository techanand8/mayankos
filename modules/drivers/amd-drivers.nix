{
  lib,
  pkgs,
  config,
  ...
}:
with lib; let
  cfg = config.drivers.amdgpu;
in {
  options.drivers.amdgpu = {
    enable = mkEnableOption "Enable AMD Drivers";
  };

  config = mkIf cfg.enable {
    boot.initrd.kernelModules = ["amdgpu"];
    systemd.tmpfiles.rules = ["L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"];
    services.xserver.videoDrivers = ["amdgpu"];

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        rocmPackages.clr.icd
        libva-utils
        vdpauinfo
      ];
      extraPackages32 = with pkgs.pkgsi686Linux; [
        # RADV is enabled by default
      ];
    };
  };
}
