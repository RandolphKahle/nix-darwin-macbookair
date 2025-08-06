{
  homebrew = {
    enable = true;

    brews = [
      # CLI tools if needed (optional)
    ];

    masApps = {
        Fantastical = 975937182;
        DayOne = 1055511498;
        NisusPro = 1429261742;
        Pages = 409201541;
        Numbers = 409203825;
    };


    casks = [
      "iterm2"
      "brave-browser"
      "signal"
      "whatsapp"
    ];

    # Automatically install missing brews/casks during `darwin-rebuild`
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    onActivation.cleanup = "zap"; # fully remove things not declared
  };
}

