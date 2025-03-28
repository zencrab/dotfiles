# Disable greeting
set fish_greeting

# Theme
set -Ux fish_color_scheme "Catppuccin Mocha"

# Start or attach to tmux at start
if command -v tmux >/dev/null && test -z "$TMUX"
    exec tmux
end

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
set -Ux VISUAL nvim
