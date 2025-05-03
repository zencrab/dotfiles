# Disable greeting
set fish_greeting

# Theme
set -Ux fish_color_scheme "Catppuccin Mocha"
# Set Neovim as default editor 
set -Ux EDITOR nvim

# Zoxide
zoxide init fish | source

# Alisases
source ~/.config/fish/aliases.fish

# Starship
source ~/.config/fish/starship.fish

# Conda
source ~/.config/fish/conda.fish

# Nix
if test -e $HOME/.nix-profile/bin/home-manager;
    bash $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
end
