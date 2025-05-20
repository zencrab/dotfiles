{ pkgs, spicetify-nix, ... }:

{
    # Home Manager configuration for the user.
    home.username = "zencrab";
    home.homeDirectory = "/home/zencrab";

    imports = [
        ./git.nix
        ./bat.nix
        ./firefox.nix
        ./tmux.nix
        ./yazi.nix
        ./spotify.nix
        spicetify-nix.homeManagerModules.default
    ];

    # Packages
    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        # Must-have programs
        zathura
        discord
        obsidian
        blender

        # Fonts
        nerd-fonts.fira-code

        # CLI tools
        btop
        chezmoi
        eza
        entr
        fastfetch
        fd
        fzf
        gomi
        lazygit
        ripgrep
        starship
        tldr
        tmux
        yazi
        zoxide

        # Development tools
        gcc

        # Must-have programs
        firefox
        zathura
        discord
        mpv

        # Python
        python3
        poetry

        # Web dev
        nodejs
        dart-sass
    ];

    # Home Manager release compatability.
    home.stateVersion = "24.11";
    # Home Manager auto management.
    programs.home-manager.enable = true;

}
