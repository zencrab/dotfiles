# Clear the screen and scrollback history
alias clears 'printf "\ec\e[3J"'

# Neovim
alias fz 'nvim "$(fzf)"'

# Eza 
if type -q eza
  alias ls 'eza --color=always --icons=auto --group-directories-first'
  alias ll 'ls --long'
  alias la 'ls --all'
  alias tree 'eza --tree --git-ignore --color=always --icons=auto'
  alias tree4 'tree --level=4'
end

# Bat
if type -q bat
  alias cat 'bat --paging=never'
end

# Bat
alias cat 'bat --paging=never'

# gomi
if type -q gomi
  alias rm 'gomi'
end

if type -q fastfetch
  alias fastani 'gum spin --spinner minidot --title "Rendering system logo and fetching info..." -- kitten icat -n --place 30x30@0x3 --scale-up --align left ~/.logos/nixos/animation-60fps.gif | fastfetch --logo-width 30 --raw -'
end
