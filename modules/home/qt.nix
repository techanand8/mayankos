{lib, ...}: {
  qt = {
    enable = true;
    platformTheme.name = lib.mkDefault "qtct";
  };
}
