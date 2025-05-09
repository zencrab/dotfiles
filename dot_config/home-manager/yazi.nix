{ pkgs, ... }:

{
    programs.yazi = {
        enable = true;
        flavors = { };
        plugins = {
            full-border = pkgs.yaziPlugins.full-border;
        };
    };
}
