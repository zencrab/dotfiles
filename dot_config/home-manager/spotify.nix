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
    programs.spicetify = {
        enable = true;

        theme = spicePkgs.themes.catppuccin;
        colorScheme = "mocha";
    };
}
