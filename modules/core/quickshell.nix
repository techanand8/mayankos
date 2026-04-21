{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    quickshell

    # Qt6 related kits（for slove Qt5Compat problem）
    qt6.qt5compat
    qt6.qtbase
    qt6.qtquick3d
    qt6.qtwayland
    qt6.qtdeclarative
    qt6.qtsvg

    # KDE Packages for noctalia-shell
    kdePackages.kirigami
    kdePackages.kirigami-addons
    kdePackages.kcoreaddons
    kdePackages.kdeclarative
    kdePackages.kiconthemes
    kdePackages.kitemmodels
    kdePackages.kguiaddons
    kdePackages.kwidgetsaddons
    kdePackages.kconfig
    kdePackages.kconfigwidgets
    kdePackages.ki18n
    kdePackages.breeze # for the breeze style/icons if needed
    kdePackages.qt5compat
    kdePackages.qqc2-desktop-style

    libsForQt5.qt5.qtgraphicaleffects
  ];

  # necessary environment variables
  environment.variables = {
    QT_PLUGIN_PATH = "${pkgs.qt6.qtbase}/lib/qt-6/plugins:${pkgs.qt6.qtwayland}/lib/qt-6/plugins:${pkgs.kdePackages.qqc2-desktop-style}/lib/qt-6/plugins:${pkgs.kdePackages.kiconthemes}/lib/qt-6/plugins";
    QML_IMPORT_PATH = "${pkgs.qt6.qt5compat}/lib/qt-6/qml:${pkgs.qt6.qtbase}/lib/qt-6/qml:${pkgs.qt6.qtdeclarative}/lib/qt-6/qml:${pkgs.qt6.qtsvg}/lib/qt-6/qml:${pkgs.kdePackages.kirigami}/lib/qt-6/qml:${pkgs.kdePackages.kirigami-addons}/lib/qt-6/qml:${pkgs.kdePackages.qqc2-desktop-style}/lib/qt-6/qml:${pkgs.kdePackages.breeze}/lib/qt-6/qml:${pkgs.kdePackages.kitemmodels}/lib/qt-6/qml:${pkgs.kdePackages.kcoreaddons}/lib/qt-6/qml:${pkgs.kdePackages.kdeclarative}/lib/qt-6/qml:${pkgs.kdePackages.kiconthemes}/lib/qt-6/qml";
    QML2_IMPORT_PATH = "${pkgs.qt6.qt5compat}/lib/qt-6/qml:${pkgs.qt6.qtbase}/lib/qt-6/qml:${pkgs.qt6.qtdeclarative}/lib/qt-6/qml:${pkgs.qt6.qtsvg}/lib/qt-6/qml:${pkgs.kdePackages.kirigami}/lib/qt-6/qml:${pkgs.kdePackages.kirigami-addons}/lib/qt-6/qml:${pkgs.kdePackages.qqc2-desktop-style}/lib/qt-6/qml:${pkgs.kdePackages.breeze}/lib/qt-6/qml:${pkgs.kdePackages.kitemmodels}/lib/qt-6/qml:${pkgs.kdePackages.kcoreaddons}/lib/qt-6/qml:${pkgs.kdePackages.kdeclarative}/lib/qt-6/qml:${pkgs.kdePackages.kiconthemes}/lib/qt-6/qml";
    QT_QUICK_CONTROLS_STYLE = "Basic";
  };

  # make sure the Qt application is working properly
  environment.sessionVariables = {
    QT_QPA_PLATFORM = "wayland;xcb";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
  };
}
