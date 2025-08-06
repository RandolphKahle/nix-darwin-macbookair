{ config, pkgs, ... }: {

  system.defaults.dock = {
    autohide = true;
    magnification = true;
    tilesize = 36;
    minimize-to-application = true;
    orientation = "bottom";
    mru-spaces = false;
  };

  system.defaults.finder = {
    AppleShowAllExtensions = true;
    ShowPathbar = true;
    ShowStatusBar = true;
  };

  system.defaults.NSGlobalDomain = {
    AppleShowAllExtensions = true;
    AppleInterfaceStyleSwitchesAutomatically = true;
    InitialKeyRepeat = 15;
    KeyRepeat = 2;
  };
}


