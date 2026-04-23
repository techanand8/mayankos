{ pkgs, ... }: {
  security = {
    rtkit.enable = true;
    
    # Enable Auditing (Enterprise requirement for logging security events)
    auditd.enable = true;
    audit.enable = true;

    # Sudo Hardening
    sudo = {
      enable = true;
      wheelNeedsPassword = true; # CRITICAL: Require password for root access
      execWheelOnly = true;      # Only users in wheel can use sudo
      extraConfig = ''
        Defaults lecture="always"
        Defaults env_reset
        Defaults secure_path="/run/wrappers/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin:/usr/bin:/bin"
      '';
    };

    # Polkit - Fine-grained access control
    polkit = {
      enable = true;
      extraConfig = ''
        polkit.addRule(function(action, subject) {
          if ( subject.isInGroup("users") && (
           action.id == "org.freedesktop.login1.reboot" ||
           action.id == "org.freedesktop.login1.reboot-multiple-sessions" ||
           action.id == "org.freedesktop.login1.power-off" ||
           action.id == "org.freedesktop.login1.power-off-multiple-sessions"
          ))
          { return polkit.Result.YES; }
        });
      '';
    };

    # Hardened PAM services
    pam.services.swaylock = {};
  };

  # Kernel Hardening (sysctl)
  boot.kernel.sysctl = {
    # 1. Network Hardening (Prevent DoS and Spoofing)
    "net.ipv4.conf.all.rp_filter" = 1;
    "net.ipv4.conf.default.rp_filter" = 1;
    "net.ipv4.icmp_echo_ignore_broadcasts" = 1;
    "net.ipv4.conf.all.accept_source_route" = 0;
    "net.ipv4.conf.default.accept_source_route" = 0;
    "net.ipv4.conf.all.send_redirects" = 0;
    "net.ipv4.conf.default.send_redirects" = 0;
    "net.ipv4.tcp_syncookies" = 1;
    "net.ipv4.tcp_rfc1337" = 1;
    
    # 2. Kernel Hardening
    "kernel.kptr_restrict" = 2; # Hide kernel pointers
    "kernel.dmesg_restrict" = 1; # Restrict dmesg access
    "kernel.printk" = "3 3 3 3"; # Limit kernel logging
    "kernel.unprivileged_bpf_disabled" = 1; # Disable unprivileged eBPF
    "net.core.bpf_jit_harden" = 2; # Harden BPF JIT
    "dev.tty.ldisc_autoload" = 0; # Prevent automatic TTY line discipline loading
    "vm.unprivileged_userfaultfd" = 0; # Disable unprivileged userfaultfd
    "kernel.perf_event_paranoid" = 3; # Restrict performance events
  };

  # Restrict /proc/sysrq-trigger to only allow emergency sync
  boot.kernelParams = [ "sysrq_always_enabled=0" ];
}
