autoload -U promptinit  # load prompt system 'promptinit'
promptinit              # invoke & initialize the module
# prompt bart
PS1="%K{yellow}%n%k@%m:%~/ > "
PS2="> "
RPS1="%(?..(%?%))"

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
