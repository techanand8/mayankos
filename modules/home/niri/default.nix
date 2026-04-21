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
        # XWayland support
        { command = [ "${pkgs.xwayland-satellite}/bin/xwayland-satellite" ]; }
        
        # Authentication Agent
        { command = [ "systemctl" "--user" "start" "hyprpolkitagent" ]; }
        
        # Desktop Components
        { command = [ "waypaper" "--restore" ]; }
        
        # Shell / Bar Integration
        { command = [ "noctalia-shell" ]; }
        
        # Clipboard Manager
        { command = [ "wl-paste" "--watch" "cliphist" "store" ]; }

        # DBus activation environment
        { command = [ "dbus-update-activation-environment" "--systemd" "WAYLAND_DISPLAY" "XDG_CURRENT_DESKTOP" "QT_QPA_PLATFORMTHEME" ]; }
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
        workspace-auto-back-and-forth = true;
      };

      # --- OUTPUTS ---
      outputs."eDP-1" = {
        scale = 1.0;
      };

      outputs."^.*$" = {
        scale = 1.0;
      };

      # --- LAYOUT & VISUALS ---
      layout = {
        gaps = 5;
        center-focused-column = "never";
        
        preset-column-widths = [
          { proportion = 0.33333; }
          { proportion = 0.5; }
          { proportion = 0.66667; }
        ];
        
        default-column-width = { proportion = 0.5; };
        
        focus-ring = {
          enable = true;
          width = 2;
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

      # --- ANIMATIONS ---
      animations = {
        workspace-switch.kind.spring = { damping-ratio = 1.0; stiffness = 1000; epsilon = 0.0001; };
        window-open.kind.easing = { duration-ms = 200; curve = "ease-out-quad"; };
        window-close.kind.easing = { duration-ms = 200; curve = "ease-out-cubic"; };
        horizontal-view-movement.kind.spring = { damping-ratio = 1.0; stiffness = 900; epsilon = 0.0001; };
        window-movement.kind.spring = { damping-ratio = 1.0; stiffness = 800; epsilon = 0.0001; };
        window-resize.kind.spring = { damping-ratio = 1.0; stiffness = 1000; epsilon = 0.0001; };
        config-notification-open-close.kind.spring = { damping-ratio = 0.6; stiffness = 1200; epsilon = 0.001; };
        overview-open-close.kind.spring = { damping-ratio = 1.0; stiffness = 900; epsilon = 0.0001; };
      };

      # --- WINDOW RULES ---
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
          matches = [{ is-active = true; }];
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

      # Layer rules for Noctalia
      layer-rules = [
        {
          matches = [{ namespace = "^noctalia-wallpaper*"; }];
          place-within-backdrop = true;
        }
      ];

      # --- KEYBINDINGS (Integrated & Improved) ---
      binds = {
        # --- Core & System ---
        "Mod+Space".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "toggle" ];
        "Mod+D".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "toggle" ];
        "Mod+S".action.spawn = [ "noctalia-shell" "ipc" "call" "controlCenter" "toggle" ];
        "Mod+Comma".action.spawn = [ "noctalia-shell" "ipc" "call" "settings" "toggle" ];
        "Mod+Shift+Q".action.spawn = [ "noctalia-shell" "ipc" "call" "sessionMenu" "toggle" ];
        "Mod+Alt+L".action.spawn = [ "noctalia-shell" "ipc" "call" "lockScreen" "lock" ];
        "Mod+Shift+C".action.spawn = [ "noctalia-shell" "ipc" "call" "calendar" "toggle" ];
        "Mod+V".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "clipboard" ];
        "Mod+Period".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "emoji" ];
        "Mod+Y".action.spawn = [ "noctalia-shell" "ipc" "call" "wallpaper" "toggle" ];
        "Mod+Shift+Y".action.spawn = [ "noctalia-shell" "ipc" "call" "wallpaper" "random" ];
        "Mod+M".action.spawn = [ "noctalia-shell" "ipc" "call" "notifications" "toggleHistory" ];
        "Mod+Ctrl+R".action.spawn = [ "noctalia-shell" "ipc" "call" "screenRecorder" "toggle" ];
        
        # --- Applications ---
        "Mod+Return".action.spawn = [ "${terminal}" ];
        "Mod+B".action.spawn = [ "${browser}" ];
        "Mod+W".action.spawn = [ "${browser}" ];
        "Mod+E".action.spawn = [ "thunar" ];
        "Mod+T".action.spawn = [ "thunar" ];
        "Mod+Alt+Y".action.spawn = [ "${terminal}" "-e" "yazi" ];
        "Mod+Alt+K".action.spawn = [ "qs-keybinds" ];
        "Mod+Ctrl+C".action.spawn = [ "qs-cheatsheets" ];

        # --- Window Management ---
        "Mod+Q".action.close-window = { };
        "Mod+F".action.maximize-column = { };
        "Mod+Shift+F".action.fullscreen-window = { };
        "Mod+O".action.toggle-overview = { };
        "Mod+Tab".action.toggle-overview = { };
        "Mod+Shift+T".action.toggle-window-floating = { };
        "Mod+Shift+W".action.toggle-column-tabbed-display = { };

        # Focus Movement
        "Mod+H".action.focus-column-left = { };
        "Mod+L".action.focus-column-right = { };
        "Mod+K".action.focus-window-up = { };
        "Mod+J".action.focus-window-down = { };
        "Mod+Left".action.focus-column-left = { };
        "Mod+Right".action.focus-column-right = { };
        "Mod+Up".action.focus-window-up = { };
        "Mod+Down".action.focus-window-down = { };

        # Move Actions
        "Mod+Ctrl+H".action.move-column-left = { };
        "Mod+Ctrl+L".action.move-column-right = { };
        "Mod+Ctrl+K".action.move-window-up = { };
        "Mod+Ctrl+J".action.move-window-down = { };
        "Mod+Ctrl+Left".action.move-column-left = { };
        "Mod+Ctrl+Right".action.move-column-right = { };
        "Mod+Ctrl+Up".action.move-window-up = { };
        "Mod+Ctrl+Down".action.move-window-down = { };

        # Resizing & Presets
        "Mod+Minus".action.set-column-width = "-10%";
        "Mod+Equal".action.set-column-width = "+10%";
        "Mod+Shift+Minus".action.set-window-height = "-10%";
        "Mod+Shift+Equal".action.set-window-height = "+10%";
        "Mod+C".action.center-column = { };
        "Mod+R".action.switch-preset-column-width = { };

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

        "Mod+Ctrl+1".action.move-column-to-workspace = 1;
        "Mod+Ctrl+2".action.move-column-to-workspace = 2;
        "Mod+Ctrl+3".action.move-column-to-workspace = 3;
        "Mod+Ctrl+4".action.move-column-to-workspace = 4;
        "Mod+Ctrl+5".action.move-column-to-workspace = 5;
        "Mod+Ctrl+6".action.move-column-to-workspace = 6;
        "Mod+Ctrl+7".action.move-column-to-workspace = 7;
        "Mod+Ctrl+8".action.move-column-to-workspace = 8;
        "Mod+Ctrl+9".action.move-column-to-workspace = 9;

        # Hardware Controls (Noctalia IPC)
        "XF86AudioRaiseVolume" = { action.spawn = [ "noctalia-shell" "ipc" "call" "volume" "increase" ]; allow-when-locked = true; };
        "XF86AudioLowerVolume" = { action.spawn = [ "noctalia-shell" "ipc" "call" "volume" "decrease" ]; allow-when-locked = true; };
        "XF86AudioMute" = { action.spawn = [ "noctalia-shell" "ipc" "call" "volume" "muteOutput" ]; allow-when-locked = true; };
        "XF86AudioMicMute" = { action.spawn = [ "noctalia-shell" "ipc" "call" "volume" "muteInput" ]; allow-when-locked = true; };
        
        "XF86MonBrightnessUp" = { action.spawn = [ "noctalia-shell" "ipc" "call" "brightness" "increase" ]; allow-when-locked = true; };
        "XF86MonBrightnessDown" = { action.spawn = [ "noctalia-shell" "ipc" "call" "brightness" "decrease" ]; allow-when-locked = true; };

        # Screenshots (Hyprshot - Saves to Pictures)
        "Print".action.spawn = [ "hyprshot" "-m" "output" "-o" "$HOME/Pictures/Screenshots" ];
        "Mod+Print".action.spawn = [ "hyprshot" "-m" "region" "-o" "$HOME/Pictures/Screenshots" ];
        "Ctrl+Print".action.spawn = [ "hyprshot" "-m" "window" "-o" "$HOME/Pictures/Screenshots" ];

        # Native Niri Screenshots (Built-in)
        "Ctrl+Shift+S".action.screenshot = { };
        "Ctrl+Shift+1".action.screenshot-screen = { };
        "Ctrl+Shift+2".action.screenshot-screen = { }; # Monitor
        "Ctrl+Shift+3".action.screenshot-window = { };

        # Emergency & Misc
        "Mod+Shift+Escape".action.show-hotkey-overlay = { };
        "Ctrl+Alt+Delete".action.quit = { };
      };

      environment = {
        ELECTRON_OZONE_PLATFORM_HINT = "auto";
        QT_QPA_PLATFORM = "wayland";
        XDG_SESSION_TYPE = "wayland";
        XDG_CURRENT_DESKTOP = "niri";
      };
    };
  };
}
