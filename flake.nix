{
  description = "nix-darwin management flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, darwin, ... }:
  let
    system = "aarch64-darwin";
    hostname = "RandyMacStudio";
  in {
    darwinConfigurations.${hostname} = darwin.lib.darwinSystem {
      inherit system;
      modules = [
        ./modules/system.nix
      ];

      specialArgs = { inherit nixpkgs; };
    };
  };
}
