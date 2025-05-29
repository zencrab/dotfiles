{ pkgs, ... }:

{
    # Enable dunst notification daemon.
    services.dunst = {
        enable = true;
        package = pkgs.dunst;

        configFile = "/home/zencrab/.config/dunst/dunst.rc";
    };
}
