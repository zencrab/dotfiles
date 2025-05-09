{

    description = "NixOs dotfiles";

    inputs = {
        nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager/master";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    };

    outputs =
        {
            nixpkgs,
            home-manager,
            spicetify-nix,
            ...
        }:
        let
            lib = nixpkgs.lib;
            system = "x86_64-linux";
            pkgs = nixpkgs.legacyPackages.${system};
        in
        {
            # NixOS configuration.
            nixosConfigurations.nixos = lib.nixosSystem {
                inherit system;
                modules = [
                    ./configuration.nix
                ];
                specialArgs = {
                    inherit nixpkgs;
                };
            };
            # Home Manager configuration.
            homeConfigurations.zencrab = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [
                    ./home.nix
                ];
                extraSpecialArgs = {
                    inherit spicetify-nix;
                };
            };
        };

}
