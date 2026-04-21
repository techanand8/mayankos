{profile, ...}: {
  programs.bash = {
    enable = false;
    enableCompletion = true;
    initExtra = ''
      fastfetch
      if [ -f $HOME/.bashrc-personal ]; then
        source $HOME/.bashrc-personal
      fi
    '';
    shellAliases = {
      sv = "sudo nvim";
      fr = "nh os switch --hostname ${profile}";
      fu = "nh os switch --hostname ${profile} --update";
      mu = "sh <(curl -L https://gitlab.com/Zaney/mayankos/-/releases/latest/download/install-mayankos.sh)";
      ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      v = "nvim";
      cat = "bat";
      ".." = "cd ..";
      mayank = "mcli";
      vivado = "distrobox enter vivado-env -- bash -l -c 'export _JAVA_AWT_WM_NONREPARENTING=1; export QT_QPA_PLATFORM=xcb; source /home/mayank-anand/2025.2/Vivado/settings64.sh && vivado'";
    };
  };
}
