{

  description = "Zencrab's NixOs dotfiles.";

  inputs = {

    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:

    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {

      # Build NixOS configuration.
      nixosConfigurations = {
        #! Remember to set the nixos configuration name to be the same as the hostname.
        nixos = lib.nixosSystem {
          inherit system;
          modules = [ ./configuration.nix ];
        };
      };

      # Build home-manager configuration.
      homeConfigurations = {
        #! Remember to set the home-manager configuration name to be the same as the username.
        zencrab = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home.nix
          ];
        };
      };
    };

}
