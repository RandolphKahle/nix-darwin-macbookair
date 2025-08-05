{ config, pkgs, ... }:


{
  nix.enable = false;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Basic system identity
  networking.hostName = "RandyMacStudio";

  system.stateVersion = 4;

  programs.zsh.enable = true;

  environment.systemPath = [ 
    "/run/current-system/sw/bin" 
  ];

  # Packages
  environment.systemPackages = with pkgs; [
    curl
    git
  ];


}
