{
  pkgs,
  inputs,
  lib,
  ...
}: let
  system = pkgs.stdenv.hostPlatform.system;
  noctaliaPkg = inputs.noctalia.packages.${system}.default;
  configDir = "${noctaliaPkg}/share/noctalia-shell";
in {
  # Install the Noctalia package
  home.packages = [
    # Wrap noctalia-shell to bake in the required QML and Plugin paths
    (pkgs.symlinkJoin {
      name = "noctalia-shell-wrapped";
      paths = [ noctaliaPkg ];
      nativeBuildInputs = [ pkgs.makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/noctalia-shell \
          --set QML2_IMPORT_PATH "${pkgs.qt6.qt5compat}/lib/qt-6/qml:${pkgs.qt6.qtbase}/lib/qt-6/qml:${pkgs.qt6.qtdeclarative}/lib/qt-6/qml:${pkgs.qt6.qtsvg}/lib/qt-6/qml:${pkgs.kdePackages.kirigami}/lib/qt-6/qml:${pkgs.kdePackages.kirigami-addons}/lib/qt-6/qml:${pkgs.kdePackages.qqc2-desktop-style}/lib/qt-6/qml:${pkgs.kdePackages.breeze}/lib/qt-6/qml:${pkgs.kdePackages.kitemmodels}/lib/qt-6/qml:${pkgs.kdePackages.kcoreaddons}/lib/qt-6/qml:${pkgs.kdePackages.kdeclarative}/lib/qt-6/qml:${pkgs.kdePackages.kiconthemes}/lib/qt-6/qml" \
          --set QML_IMPORT_PATH "${pkgs.qt6.qt5compat}/lib/qt-6/qml:${pkgs.qt6.qtbase}/lib/qt-6/qml:${pkgs.qt6.qtdeclarative}/lib/qt-6/qml:${pkgs.qt6.qtsvg}/lib/qt-6/qml:${pkgs.kdePackages.kirigami}/lib/qt-6/qml:${pkgs.kdePackages.kirigami-addons}/lib/qt-6/qml:${pkgs.kdePackages.qqc2-desktop-style}/lib/qt-6/qml:${pkgs.kdePackages.breeze}/lib/qt-6/qml:${pkgs.kdePackages.kitemmodels}/lib/qt-6/qml:${pkgs.kdePackages.kcoreaddons}/lib/qt-6/qml:${pkgs.kdePackages.kdeclarative}/lib/qt-6/qml:${pkgs.kdePackages.kiconthemes}/lib/qt-6/qml" \
          --set QT_PLUGIN_PATH "${pkgs.qt6.qtbase}/lib/qt-6/plugins:${pkgs.qt6.qtwayland}/lib/qt-6/plugins:${pkgs.kdePackages.qqc2-desktop-style}/lib/qt-6/plugins:${pkgs.kdePackages.kiconthemes}/lib/qt-6/plugins" \
          --set QT_QUICK_CONTROLS_STYLE "Basic" \
          --prefix XDG_DATA_DIRS : "${pkgs.kdePackages.kirigami}/share"
      '';
    })
    pkgs.quickshell # Ensure quickshell is available for the service
    pkgs.kdePackages.kirigami
    pkgs.kdePackages.kirigami-addons
    pkgs.kdePackages.qqc2-desktop-style
    pkgs.kdePackages.breeze
    pkgs.kdePackages.kitemmodels
    pkgs.kdePackages.kcoreaddons
    pkgs.kdePackages.kdeclarative
    pkgs.kdePackages.kiconthemes
    pkgs.kdePackages.kguiaddons
    pkgs.kdePackages.kwidgetsaddons
    pkgs.kdePackages.kconfig
    pkgs.kdePackages.kconfigwidgets
    pkgs.kdePackages.ki18n
  ];

  home.sessionVariables = {
    QT_QUICK_CONTROLS_STYLE = "Basic";
  };

  # Seed the configuration
  home.activation.seedNoctaliaShellCode = lib.hm.dag.entryAfter ["writeBoundary"] ''
    set -eu
    DEST="$HOME/.config/quickshell/noctalia-shell"
    SRC="${configDir}"

    if [ ! -d "$DEST" ]; then
      $DRY_RUN_CMD mkdir -p "$HOME/.config/quickshell"
      $DRY_RUN_CMD cp -R "$SRC" "$DEST"
      $DRY_RUN_CMD chmod -R u+rwX "$DEST"
    fi
  '';
}
