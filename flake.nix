{
  description = "nix-darwin management flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-25.05";
    darwin.url = "github:lnl7/nix-darwin/nix-darwin-25.05";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, darwin, ... }:
  let
    system = "aarch64-darwin";
    hostname = "RandyMacBookAir";
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

