{
    config,
    pkgs,
    ...
}:

let
    fishConfig = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/fish/config.fish";
in
{
    programs.atuin.enable = false;
    # Fish shell configuration
    programs.fish = {
        enable = true;

        plugins = [
            {
                name = "fzf";
                src = pkgs.fishPlugins.fzf-fish.src;
            }
        ];
    };
    home.file."config/fish/config.fish" = {
        source = fishConfig;
        force = true;
    };

    # FZF configuration
    # programs.fzf = {
    #     enable = true;
    #     enableFishIntegration = true;
    #
    #     colors = {
    #         spinner = "#89b4fa";
    #
    #         # text
    #         fg = "#cdd6f4";
    #         "fg+" = "#cdd6f4";
    #         hl = "#eba0ac";
    #     };
    # };
}
