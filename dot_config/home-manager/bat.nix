{ pkgs, ... }:

{
  programs.bat = {
    enable = true;

    config = {
      theme = "catppuccin";
    };

    themes = {
      catppuccin = {
        src = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "bat";
          rev = "main";
          sha256 = "sha256-6fWoCH90IGumAMc4buLRWL0N61op+AuMNN9CAR9/OdI=";
        };
        file = "themes/Catppuccin Mocha.tmTheme";
      };
    };

    extraPackages = with pkgs.bat-extras; [
      batman
      batdiff
    ];
  };
}
