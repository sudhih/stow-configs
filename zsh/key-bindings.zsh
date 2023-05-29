# zsh-autosuggestions settings
bindkey '^j' autosuggest-accept
bindkey '^k' autosuggest-execute

# thank you @theprimagen
# https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer
export PATH="$PATH:$HOME/stow-configs/bin/.local/scripts"
bindkey -s '^f' "tmux-sessionizer\r"

# Open pop-up to find file & edit selected in Neovim
# Cmd `e` is an alias here
bindkey -s '^e' "e\r"

