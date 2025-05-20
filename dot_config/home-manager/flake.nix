{

    description = "NixOs zencrab's dotfiles flake";

    inputs = {
        # Nixpkgs
        nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";

        # Home Manager
        home-manager = {
            url = "github:nix-community/home-manager/master";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        # Spicetify
        spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    };

    outputs =
        {
            self,
            nixpkgs,
            home-manager,

            # Flake outputs
            spicetify-nix,
            ...
        }@inputs:
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
