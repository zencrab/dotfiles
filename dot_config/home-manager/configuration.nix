# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{
    config,
    pkgs,
    nixpkgs,
    ...
}:

{
    imports = [
        ./hardware-configuration.nix
        ./shell.nix
    ];

    # Allow experimental features.
    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];

    # Use the systemd-boot EFI boot loader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    # Network configuration
    networking.hostName = "nixos";
    networking.wireless.iwd.enable = true;
    networking.enableIPv6 = false;

    time.timeZone = "Europe/London";

    # Enable sound.
    services.pipewire = {
        enable = true;
        pulse.enable = true;
    };

    # Enable touchpad support (enabled default in most desktopManager).
    services.libinput.enable = true;

    # List packages installed in system profile.
    environment.systemPackages = with pkgs; [
        # System
        auto-cpufreq
        batsignal
        brightnessctl
        libnotify
        pulseaudio
        toybox # Unix CLI utilities (killall, etc.)
        sqlite

        # Shell
        fish

        # CLI tools
        zip
        unzip

        # Developments tools
        git
        gnumake
        gcc
        python3
        nodejs
        neovim

        # VM (Hyprland)
        hyprlock
        hyprpaper
        hyprshot
        kitty
        waybar
        wl-clipboard
        wofi
    ];

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

    # Enable automatic CPU speed and power optimiser daemon.
    services.auto-cpufreq.enable = true;
    # Enable battery status daemon.
    # services.batsignal.enable = true;

    # Current system was installed from and is compatible since release 24.11.
    system.stateVersion = "24.11";

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.zencrab = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];
    };

    programs.command-not-found = {
        enable = false;
    };

}
