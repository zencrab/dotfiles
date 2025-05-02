{ config, pkgs, ... }:

{
  home.username = "zencrab";
  home.homeDirectory = "/home/zencrab";

  # Home Manager release that your configuration is compatible with. 
  home.stateVersion = "24.11";

  home.packages = [
    pkgs.firefox

    # Fonts
    pkgs.fira-sans
    pkgs.nerd-fonts.jetbrains-mono

    # CLI tools
    pkgs.chezmoi
    pkgs.eza
    pkgs.fastfetch
    pkgs.fzf
    pkgs.gomi
    pkgs.starship
    pkgs.tmux
    pkgs.zoxide

    # Neovim packages
    pkgs.neovim
    pkgs.tree-sitter

    # Hyprland
    pkgs.hyprpaper
    pkgs.hyprlock
    pkgs.hyprshot
    pkgs.waybar
    pkgs.wofi
    pkgs.yazi
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/zencrab/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
