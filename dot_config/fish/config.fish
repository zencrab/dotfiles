# Disable greeting
set fish_greeting

# Theme
set -Ux fish_color_scheme "Catppuccin Mocha"

# Zoxide
zoxide init fish | source

# Alisases
source ~/.config/fish/aliases.fish

# Starship
source ~/.config/fish/starship.fish

# Conda
source ~/.config/fish/conda.fish

# Set Neovim as default editor 
set -Ux EDITOR nvim
