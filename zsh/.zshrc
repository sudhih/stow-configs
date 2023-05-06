# export HISTSIZE=~/.zsh_history
setopt INTERACTIVE_COMMENTS       # Allow in-line comments in interactive mode
setopt PROMPT_SUBST               # subject prompt string, first to, parameter expansion, cmd substitution & arithmatic expansion


# Default Editor
export EDITOR="nvim"

# History setup
# ------------------
# Save command history in this file
export HISTFILE="$HOME/.zsh_history"

# Max number of lines to be saved in history file
export SAVEHIST=10000

# Number of lines to read from $HISTFILE at the start of interactive session
export HISTSIZE=10000

# Do not save history line if it matches previous one
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS
# don't store history or fc commands
setopt HIST_NO_STORE
# ignore commands that start with space. use this technique if you intentionally want to ignore
# certain commands from saving into history
setopt HIST_IGNORE_SPACE
# -------------------
# Aliases
alias ls='ls --color=auto -F'
alias la='ls -a'
alias ll='ls -l'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

alias mkdir='mkdir -pv'

# Aliases for switching nvim configuration
alias nvim-lazy="NVIM_APPNAME=lazyvim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart.nvim nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"

function nvims() {
  configs=("lazyvim" "kickstart.nvim" "LunarVim" "default")
  selected=$(printf "%s\n" "${configs[@]}" | fzf --prompt="  Neovim Config  " --height=50% --layout=reverse --border --exit-0)
  if [[ -z $selected ]]; then
    echo "Nothing Selected"
    return 0
  elif [[ $selected == "default" ]]; then
    $selected=""
  fi
  NVIM_APPNAME=$selected nvim $@
}

bindkey -s ^q "nvims\n"

# Prompt from starship
# Install it from here: https://starship.rs/#quick-install
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$HOME/.local/bin/:$PATH
eval "$(zoxide init zsh)"
