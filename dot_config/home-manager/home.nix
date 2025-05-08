{ pkgs, ... }:

{
  imports = [
    ./bat.nix
    ./firefox.nix
    ./tmux.nix
    ./yazi.nix
  ];

  home.username = "zencrab";
  home.homeDirectory = "/home/zencrab";

  # Home Manager release that your configuration is compatible with.
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    firefox

    # Fonts
    nerd-fonts.jetbrains-mono

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

  # Dotfiles managed by Home Manager.
  home.file = {
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either:
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #  /etc/profiles/per-user/zencrab/etc/profile.d/hm-session-vars.sh
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
