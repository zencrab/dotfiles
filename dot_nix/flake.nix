{

  description = "zencrab's dotfiles.";

  inputs = {

    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";

    home-manager = {
        url = "github:nix-community/home-manager/master";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, home-manager, ... }:

  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {

    # Build NixOS configuration.
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system; 
	    modules = [ ./configuration.nix ];
      };
    };

    # Build home-manager configuration.
    homeConfigurations = {
      zencrab = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
      };
    };
  };

}
