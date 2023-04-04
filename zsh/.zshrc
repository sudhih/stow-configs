autoload -U promptinit  # load prompt system 'promptinit'
promptinit              # invoke & initialize the module
# prompt bart
PS1="%K{yellow}%n%k@%m:%~/ > "
PS2="> "
RPS1="%(?..(%?%))"

export ZSH_THEME=spaceship
# export HISTSIZE=~/.zsh_history
setopt INTERACTIVE_COMMENTS       # Allow in-line comments in interactive mode
setopt PROMPT_SUBST               # subject prompt string, first to, parameter expansion, cmd substitution & arithmatic expansion

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
