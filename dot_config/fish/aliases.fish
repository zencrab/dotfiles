# Clear the screen and scrollback history
alias clears 'printf "\ec\e[3J"'

# Neovim
alias fz 'nvim "$(fzf)"'

# Eza 
alias ls 'eza --color=always --icons=auto --group-directories-first'
alias ll 'ls --long'
alias la 'ls --all'
alias tree 'eza --tree --git-ignore --color=always --icons=auto'
alias tree4 'tree --level=4'

# Bat
alias cat 'bat --paging=never'

# gomi
alias rm 'gomi'
