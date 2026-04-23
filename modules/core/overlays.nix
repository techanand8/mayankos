{inputs, ...}: {
  nixpkgs.overlays = [
    # Provide pkgs.google-antigravity via antigravity-nix overlay
    inputs.antigravity-nix.overlays.default
    # Caelestia Shell Overlay
    (final: prev: {
      caelestia-shell = inputs.caelestia.packages."x86_64-linux".caelestia-shell;
      caelestia-cli = inputs.caelestia.inputs.caelestia-cli.packages."x86_64-linux".caelestia-cli;
      morty = final.rustPlatform.buildRustPackage {
        pname = "morty";
        version = "0.6.0";
        src = inputs.morty;
        cargoHash = "sha256-cr6L0whgiSJtMi5UYN0QLHfMK3mYWPzCg5RqfmsIGDY="; 
        doCheck = false;

        # Fix for time crate 0.3.30 build failure with newer rustc (1.80+)
        # Error: type annotations needed for `Box<_>`
        preBuild = ''
          # Find the problematic file in the build directory or its siblings (where vendor lives)
          # We search from one level up to find the vendor directory if it's not in the current root
          MOD_FILE=$(find .. -name mod.rs | grep "time-0.3.30/src/format_description/parse/mod.rs" | head -n 1)
          if [ -n "$MOD_FILE" ]; then
            echo "Patching $MOD_FILE..."
            # If it's a symlink (pointing to store), we need to replace it with a writable copy
            if [ -L "$MOD_FILE" ]; then
              cp --remove-destination "$(readlink -f "$MOD_FILE")" "$MOD_FILE"
            fi
            chmod +w "$MOD_FILE"
            sed -i 's/let items = format_items/let items: Box<[_]> = format_items/' "$MOD_FILE"
          else
            echo "Warning: Could not find time-0.3.30 mod.rs to patch. Build might fail."
          fi
        '';
      };
    })
    # Build tumbler without EPUB thumbnailer (libgepub) to avoid webkitgtk
    (_final: prev: {
      xfce = prev.xfce // {
        tumbler = prev.xfce.tumbler.overrideAttrs (old: {
          buildInputs = prev.lib.remove prev.libgepub old.buildInputs;
        });
      };
    })
  ];
}
