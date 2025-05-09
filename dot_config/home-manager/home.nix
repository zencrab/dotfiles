{ pkgs, spicetify-nix, ... }:

{
  # Home Manager configuration for the user.
  home.username = "zencrab";
  home.homeDirectory = "/home/zencrab";

  imports = [
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
    firefox
    discord

    # Fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.caskaydia-cove

    # CLI tools
    chezmoi
    eza
    fastfetch
    fzf
    gomi
    lazygit
    ripgrep
    starship
    tmux
    yazi
    zoxide

    # Neovim packages
    neovim
    tree-sitter

    # LSPs
    lua-language-server
    nil
    # Formatters
    nixfmt-rfc-style
    stylua
  ];

  # Home Manager release compatability.
  home.stateVersion = "24.11";
  # Home Manager auto management.
  programs.home-manager.enable = true;

}
