{
  host,
  pkgs,
  lib,
  config,
  inputs,
  ...
}: let
  vars = import ../../../hosts/${host}/variables.nix;
  inherit (vars) terminal browser barChoice;
in {
  imports = [
    inputs.niri.homeModules.niri
  ];
  # Niri can be configured via programs.niri.settings (Nix-style) 
  # which home-manager converts to KDL automatically.
  programs.niri = {
    settings = {
      # --- ENVIRONMENT & AUTOSTART ---
      spawn-at-startup = [
        # XWayland support (niri starts this if it's in PATH, but explicit is safer for some older versions)
        { command = [ "${pkgs.xwayland-satellite}/bin/xwayland-satellite" ]; }
        
        # Authentication Agent
        { command = [ "systemctl" "--user" "start" "hyprpolkitagent" ]; }
        
        # Desktop Components
        { command = [ "swaync" ]; }
        { command = [ "waypaper" "--restore" ]; }
        
        # Shell / Bar Integration
        { command = [ "noctalia-shell" ]; }
        
        # Clipboard Manager
        { command = [ "wl-paste" "--watch" "cliphist" "store" ]; }
      ];

      input = {
        keyboard.xkb.layout = vars.keyboardLayout or "us";
        touchpad = {
          tap = true;
          dwt = true; # disable-while-typing
          natural-scroll = true;
          accel-speed = 0.2;
          accel-profile = "adaptive";
        };
        mouse = {
          natural-scroll = true;
          accel-speed = 0.0;
          accel-profile = "flat";
        };
        focus-follows-mouse.enable = true;
      };

      # --- OUTPUTS ---
      # Match any output and use its preferred mode
      outputs."^.*$" = {
        # Use the preferred resolution and refresh rate automatically
        # You can also manually set this to e.g. "1920x1080@60.0"
        # mode = "1920x1080@60.0";
        scale = 1.0;
      };

      # --- LAYOUT & VISUALS ---
      layout = {
        gaps = 12;
        center-focused-column = "never";
        
        preset-column-widths = [
          { proportion = 0.33333; }
          { proportion = 0.5; }
          { proportion = 0.66667; }
        ];
        
        default-column-width = { proportion = 0.5; };
        
        focus-ring = {
          enable = true;
          width = 3;
          active.color = "#${config.lib.stylix.colors.base08}";
          inactive.color = "#${config.lib.stylix.colors.base01}";
        };

        struts = {
          left = 0;
          right = 0;
          top = 0;
          bottom = 0;
        };
      };

      # --- WINDOW RULES (CachyOS / Modern Style) ---
      window-rules = [
        # Global rounded corners
        {
          geometry-corner-radius = {
            bottom-left = 12.0;
            bottom-right = 12.0;
            top-left = 12.0;
            top-right = 12.0;
          };
          clip-to-geometry = true;
        }
        # Floating rules for dialogs
        {
          matches = [{ is-active = true; }]; # Placeholder for general rules
        }
        # Specific app rules
        {
          matches = [{ app-id = "^org.keepassxc.KeePassXC$"; }];
          open-floating = true;
        }
        {
          matches = [{ app-id = "^pavucontrol$"; }];
          open-floating = true;
        }
      ];

      # --- KEYBINDINGS (Noctalia + Niri Actions) ---
      binds = {
        # --- Terminal & Browser ---
        "Mod+Return".action.spawn = [ "${terminal}" ];
        "Mod+W".action.spawn = [ "${browser}" ];
        
        # --- Noctalia Shell IPC Calls ---
        "Mod+D".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "toggle" ];
        "Mod+M".action.spawn = [ "noctalia-shell" "ipc" "call" "notifications" "toggleHistory" ];
        "Mod+V".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "clipboard" ];
        "Mod+Alt+P".action.spawn = [ "noctalia-shell" "ipc" "call" "settings" "toggle" ];
        "Mod+X".action.spawn = [ "noctalia-shell" "ipc" "call" "sessionMenu" "toggle" ];
        "Mod+C".action.spawn = [ "noctalia-shell" "ipc" "call" "controlCenter" "toggle" ];
        "Mod+Ctrl+R".action.spawn = [ "noctalia-shell" "ipc" "call" "screenRecorder" "toggle" ];
        
        # --- System Tools ---
        "Mod+S".action.spawn = [ "screenshootin" ];
        "Mod+Y".action.spawn = [ "${terminal}" "-e" "yazi" ];
        "Mod+T".action.spawn = [ "thunar" ];
        "Mod+K".action.spawn = [ "qs-keybinds" ];
        "Mod+Ctrl+C".action.spawn = [ "qs-cheatsheets" ];
        "Mod+Shift+W".action.spawn = [ "qs-wallpapers-apply" ];
        "Mod+E".action.spawn = [ "emopicker9000" ];
        "Mod+period".action.spawn = [ "emopicker9000" ];
        "Print".action.spawn = [ "hyprshot" "-m" "output" "-o" "$HOME/Pictures/Screenshots" ];
        "Mod+Print".action.spawn = [ "hyprshot" "-m" "region" "-o" "$HOME/Pictures/Screenshots" ];

        # --- Niri Window Management ---
        "Mod+Q".action.close-window = null;
        "Mod+F".action.maximize-column = null;
        "Mod+Shift+F".action.fullscreen-window = null;
        "Mod+Tab".action.toggle-overview = null;
        
        # Column resizing & presets
        "Mod+R".action.switch-preset-column-width = null;
        "Mod+Comma".action.consume-window-into-column = null;
        "Mod+Period".action.expel-window-from-column = null;

        # Focus Movement
        "Mod+H".action.focus-column-left = null;
        "Mod+L".action.focus-column-right = null;
        "Mod+K".action.focus-window-up = null;
        "Mod+J".action.focus-window-down = null;
        "Mod+Left".action.focus-column-left = null;
        "Mod+Right".action.focus-column-right = null;
        "Mod+Up".action.focus-window-up = null;
        "Mod+Down".action.focus-window-down = null;

        # Column Movement
        "Mod+Shift+H".action.move-column-left = null;
        "Mod+Shift+L".action.move-column-right = null;
        "Mod+Shift+K".action.move-window-up = null;
        "Mod+Shift+J".action.move-window-down = null;
        "Mod+Shift+Left".action.move-column-left = null;
        "Mod+Shift+Right".action.move-column-right = null;
        "Mod+Shift+Up".action.move-window-up = null;
        "Mod+Shift+Down".action.move-window-down = null;

        # Workspaces
        "Mod+1".action.focus-workspace = 1;
        "Mod+2".action.focus-workspace = 2;
        "Mod+3".action.focus-workspace = 3;
        "Mod+4".action.focus-workspace = 4;
        "Mod+5".action.focus-workspace = 5;
        "Mod+6".action.focus-workspace = 6;
        "Mod+7".action.focus-workspace = 7;
        "Mod+8".action.focus-workspace = 8;
        "Mod+9".action.focus-workspace = 9;

        "Mod+Shift+1".action.move-column-to-workspace = 1;
        "Mod+Shift+2".action.move-column-to-workspace = 2;
        "Mod+Shift+3".action.move-column-to-workspace = 3;
        "Mod+Shift+4".action.move-column-to-workspace = 4;
        "Mod+Shift+5".action.move-column-to-workspace = 5;
        "Mod+Shift+6".action.move-column-to-workspace = 6;
        "Mod+Shift+7".action.move-column-to-workspace = 7;
        "Mod+Shift+8".action.move-column-to-workspace = 8;
        "Mod+Shift+9".action.move-column-to-workspace = 9;

        # Layout cycling
        "Mod+Page_Up".action.focus-workspace-up = null;
        "Mod+Page_Down".action.focus-workspace-down = null;

        # --- Quit / Session ---
        "Mod+Shift+E".action.quit = null;
        "Mod+Shift+C".action.quit = null;

        # --- Hardware Controls ---
        "XF86AudioRaiseVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+" ];
        "XF86AudioLowerVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%-" ];
        "XF86AudioMute".action.spawn = [ "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle" ];
        "XF86MonBrightnessUp".action.spawn = [ "brightnessctl" "set" "+5%" ];
        "XF86MonBrightnessDown".action.spawn = [ "brightnessctl" "set" "5%-" ];
      };
    };
  };
}
