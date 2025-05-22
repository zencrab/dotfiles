{ pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix

        ./system/bluetooth.nix

        ./shell.nix
    ];

    # Allow experimental features.
    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];
    programs.command-not-found.enable = false;

    # Use the systemd-boot EFI boot loader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    # Network configuration
    networking.hostName = "nixos";
    networking.wireless.iwd.enable = true;
    networking.enableIPv6 = false;

    # Set the timezone.
    time.timeZone = "Europe/London";

    # Enable sound.
    services.pipewire = {
        enable = true;
        pulse.enable = true;
    };

    # Enable touchpad support (enabled default in most desktopManager).
    services.libinput.enable = true;

    # Enable not free packages.
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile.
    environment.systemPackages = with pkgs; [
        # System
        brightnessctl
        libnotify
        pulseaudio
        busybox
        bluetui

        # Fish shell and plugins
        fish
        fishPlugins.fzf-fish

        # Command line tools
        zip
        unzip

        # Developments tools
        git

        # VM (Hyprland)
        hyprlock
        hyprpaper
        hyprshot
        hyprcursor
        hyprpicker
        catppuccin-cursors.mochaBlue
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

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.zencrab = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];

        shell = pkgs.fish;
    };

    # Current system was installed from and is compatible since release 24.11.
    system.stateVersion = "24.11";
}
