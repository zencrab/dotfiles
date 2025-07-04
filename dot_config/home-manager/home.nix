{
  pkgs,
  ...
}:

{
  # Home Manager configuration for the user.
  home.username = "zencrab";
  home.homeDirectory = "/home/zencrab";

  imports = [
    # Fonts
    ./fonts.nix

    # Notifications
    ./notifications/battery-notifier.nix
    ./notifications/dunst.nix

    # Softwares
    ./software/firefox.nix
    ./software/gimp.nix
    ./software/mpv.nix
    ./software/spotify.nix

    # CLI Tools
    ./cli-tools/bat.nix
    ./cli-tools/git.nix
    ./cli-tools/neovim.nix
    ./cli-tools/tmux.nix
    ./cli-tools/yazi.nix
  ];

  # Local packages
  nixpkgs.overlays = [
    (final: prev: {
      waybar-module-pomodoro =
        final.callPackage /home/zencrab/Projects/nixpkgs/pkgs/by-name/wa/waybar-module-pomodoro/package.nix
          { };
    })
  ];

  # Packages
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    waybar-module-pomodoro

    # Must-have programs
    zathura
    discord
    obsidian
    obs-studio
    blender
    inkscape

    # CLI tools
    asciinema
    btop
    chezmoi
    eza
    entr
    fastfetch
    fd
    fzf
    gh
    gomi
    lazygit
    ripgrep
    starship
    tldr
    tmux
    yazi
    zoxide

    # TUI tools
    gum

    # Development tools
    qtcreator
    gcc

    # Lua
    luajit
    luajitPackages.busted
    luajitPackages.luarocks

    # Nix
    nix-prefetch-github

    # Python
    poetry
    python3
    python312Packages.pyside6

    # Rust
    rustc
    cargo

    # Web dev
    nodejs
    dart-sass
    heroku
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
