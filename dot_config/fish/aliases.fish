# Neovim
alias vi nvim
alias vif 'nvim "$(fzf)"'

# Clear the screen and scrollback history
alias 'c-screen' 'printf "\ec\e[3J"'

# Eza 
alias ls='eza --color=always --icons=auto --group-directories-first'
alias ll='ls --long'
alias la='ls --all'
alias tree='eza --tree --git-ignore --color=always --icons=auto'
alias tree4='tree --level=4'
