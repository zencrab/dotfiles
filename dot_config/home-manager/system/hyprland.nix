{ pkgs, ... }:
{
  # Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  #  # Start Hyprland on bootup
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        user = "greeter";
      };
    };
  };

  # Greetd tuigreet configuration service to avoid logs on screen.
  # https://github.com/apognu/tuigreet/issues/68#issuecomment-1586359960
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    # Without this errors will spam on screen
    StandardError = "journal";
    # Without these bootlogs will spam on screen
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };

  environment.systemPackages = with pkgs; [
    # Greetd
    greetd.tuigreet

    # Hyprland
    hyprlock
    hyprpaper
    hyprpicker
    hyprshot
    hyprsunset
    waybar
    wl-clipboard
    wofi

    # Cursor
    hyprcursor
    catppuccin-cursors.mochaBlue

    # Terminal
    kitty
  ];
}
