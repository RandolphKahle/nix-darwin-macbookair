{
  homebrew = {
    enable = true;

    brews = [
      # CLI tools if needed (optional)
    ];

    casks = [
      "iterm2"
    ];

    # Automatically install missing brews/casks during `darwin-rebuild`
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    onActivation.cleanup = "zap"; # fully remove things not declared
  };
}

