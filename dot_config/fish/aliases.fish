# Clear the screen and scrollback history
alias 'clears' 'printf "\ec\e[3J"'

# Neovim
alias nvif 'nvim "$(fzf)"'

# Eza 
alias ls='eza --color=always --icons=auto --group-directories-first'
alias ll='ls --long'
alias la='ls --all'
alias tree='eza --tree --git-ignore --color=always --icons=auto'
alias tree4='tree --level=4'

# Python
alias Python python
