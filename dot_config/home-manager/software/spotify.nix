{
    config,
    pkgs,
    spicetify-nix,
    ...
}:

let
    spicePkgs = spicetify-nix.legacyPackages.${pkgs.system};
in
{
    imports = [
        spicetify-nix.homeManagerModules.default
    ];
    programs.spicetify = {
        enable = true;

        theme = spicePkgs.themes.catppuccin;
        colorScheme = "mocha";
    };
}
