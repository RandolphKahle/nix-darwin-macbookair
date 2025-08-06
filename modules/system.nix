{ config, pkgs, ... }:


{
  nix.enable = false;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Basic system identity
  networking.hostName = "RandyMacBookAir";

  system.stateVersion = 4;
  system.primaryUser = "randolph";

  programs.zsh.enable = true;

  environment.systemPath = [ 
    "/run/current-system/sw/bin" 
  ];

  imports = [
    ./macos-defaults.nix
    ./brew.nix
  ];

  # Packages
  environment.systemPackages = with pkgs; [
    curl
    git
    tree
  ];


}
