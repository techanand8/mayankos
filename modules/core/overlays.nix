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
        cargoHash = "sha256-07bqrxv2bwm2g6qzzk8xb7rjgmfrajbpzjfq0qi1dshrbhsmcwza"; # Placeholder hash, will fix after build
        doCheck = false;
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
