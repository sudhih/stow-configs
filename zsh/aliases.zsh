if hash exa 2>/dev/null; then
  alias ls='exa --grid --icons --group-directories-first --sort=name'
  alias ll='exa --long --icons --group-directories-first --sort=name'
  alias la='exa --long --all --group-directories-first'
  alias lt='exa --tree --long --level=2 --sort=name '
else
  alias ls='ls -F --group-directories-first --color=auto'
  alias ll='ls -l --group-directories-first --color=auto'
  alias la='ls -a --group-directories-first --color=auto'
fi

alias mkdir='mkdir -pv'
alias s='print "Sourcing $HOME/.zshrc" && source $HOME/.zshrc'

# Git
alias ga='git add'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
