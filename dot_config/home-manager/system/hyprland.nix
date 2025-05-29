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
        command = "${pkgs.hyprland}/bin/Hyprland";
        user = "zencrab";
      };
    };
  };

  environment.systemPackages = with pkgs; [
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
