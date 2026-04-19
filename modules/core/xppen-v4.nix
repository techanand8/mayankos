{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  pname = "xppen-mini7v2-official";
  version = "4.0.13-251226";

  src = pkgs.fetchurl {
    url = "https://github.com/techanand8/xpendriver4.13for-mini7v2/raw/main/XPPenLinux4.0.13-251226.deb";
    sha256 = "sha256-1xWi+4WdNYF+ifHKwlEJ9IN8JNKSdf0WPsXOIqcJ1Tc="; 
  };

  nativeBuildInputs = with pkgs; [
    dpkg
    autoPatchelfHook
    makeWrapper
  ];

  buildInputs = with pkgs; [
    glib dbus libusb1 fontconfig freetype zlib libGL
    libsm libxext libxtst libx11 libxrender libxcb libXi
    xkeyboard_config # Added to fix the XKB error
  ];

  dontUnpack = true;

  installPhase = ''
    mkdir -p $out
    mkdir -p temp_unpack
    dpkg-deb -x $src temp_unpack

    cp -a --no-preserve=ownership temp_unpack/usr/* $out/
    if [ -d "temp_unpack/lib" ]; then
      cp -a --no-preserve=ownership temp_unpack/lib $out/
    fi

    # The PenTablet.sh script is usually in /lib/pentablet/ or /lib/pentablet/App/
    # We find it and its directory
    SCRIPT_PATH=$(find $out -name "PenTablet.sh" -type f | head -n 1)
    DRIVER_DIR=$(dirname "$SCRIPT_PATH")
    
    chmod a+x "$SCRIPT_PATH"

    # Create the launcher with fixed paths for config and XKB
    mkdir -p $out/bin
    makeWrapper "$SCRIPT_PATH" $out/bin/pentablet \
      --prefix LD_LIBRARY_PATH : "${pkgs.lib.makeLibraryPath buildInputs}" \
      --prefix XKB_CONFIG_ROOT : "${pkgs.xkeyboard_config}/share/X11/xkb" \
      --set QT_XKB_CONFIG_ROOT "${pkgs.xkeyboard_config}/share/X11/xkb" \
      --set QT_QPA_PLATFORM xcb \
      --set QT_PLUGIN_PATH "$DRIVER_DIR" \
      --set QT_AUTO_SCREEN_SCALE_FACTOR 0 \
      --set QT_SCALE_FACTOR 1 \
      --run "cd $DRIVER_DIR" \
      --set QT_X11_NO_MITSHM 1
  '';
}

