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
          # Find and patch the problematic line in the 'time' crate 0.3.30
          find vendor -name mod.rs | grep "time-0.3.30/src/format_description/parse/mod.rs" | while read -r file; do
            chmod +w "$file"
            sed -i 's/let items = format_items/let items: Box<[_]> = format_items/' "$file"
          done
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
