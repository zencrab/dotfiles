{ pkgs, ... }:

{
    programs.neovim = {
        enable = true;
    };

    home.packages = with pkgs; [
        # Neovim core
        tree-sitter

        # Lua
        lua-language-server
        stylua

        # Nix
        nil
        nixfmt-rfc-style

        # Python
        pyright
        ruff
    ];

    xdg.desktopEntries."nvim" = {
        name = "Neovim";
        noDisplay = true;
    };
}
