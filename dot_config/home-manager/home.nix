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
        # Fonts
        nerd-fonts.fira-code

        # CLI tools
        btop
        chezmoi
        eza
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
        python3
        nodejs

        # Must-have programs
        firefox
        zathura
        discord
        mpv

        # Neovim packages
        neovim
        tree-sitter

        # LSPs
        lua-language-server
        nil
        pyright
        # Formatters
        nixfmt-rfc-style
        stylua
        ruff
    ];

    # Home Manager release compatability.
    home.stateVersion = "24.11";
    # Home Manager auto management.
    programs.home-manager.enable = true;

}
