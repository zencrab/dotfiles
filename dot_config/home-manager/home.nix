{ pkgs, spicetify-nix, ... }:

{
    # Home Manager configuration for the user.
    home.username = "zencrab";
    home.homeDirectory = "/home/zencrab";

    imports = [
        ./git.nix
        ./bat.nix
        ./neovim.nix
        ./firefox.nix
        ./tmux.nix
        ./mpv.nix
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

        # Lua
        luajit
        luajitPackages.busted
        luajitPackages.luarocks

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

    # Remove desktop entry for user-level packages.
    xdg.desktopEntries = {
        "btop" = {
            name = "Btop";
            noDisplay = true;
        };
        "obsidian" = {
            type = "Application";

            name = "Obsidian";
            genericName = "Knowledge Base";
            icon = "/home/zencrab/.config/icons/obsidian.png";

            exec = "obsidian";
            terminal = false;

            categories = [
                "Office"
            ];

            mimeType = [
                "x-scheme-handler/obsidian"
            ];

            settings = {
                StartupWMClass = "obsidian";
            };

        };
    };
    # Desktop entry for system-wide packages.
    xdg.desktopEntries = {
        "kitty" = {
            type = "Application";

            name = "Kitty";
            genericName = "Terminal Emulator";
            comment = "A fast, feature full, GPU based terminal emulator";
            icon = "kitty";

            exec = "kitty";

            categories = [
                "System"
                "TerminalEmulator"
            ];

        };
        "fish" = {
            name = "Fish";
            noDisplay = true;
        };
        "nixos-manual" = {
            name = "NixOS Manual";
            noDisplay = true;
        };
    };
}
