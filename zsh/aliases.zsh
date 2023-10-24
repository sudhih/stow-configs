if hash exa 2>/dev/null; then
  alias ls='exa --grid --icons --group-directories-first --sort=name'
  alias ll='exa --long --icons --group-directories-first --sort=name'
  alias la='exa --long --all --group-directories-first --ignore-glob .git'
  alias lt='exa --tree --level=2 --sort=name --ignore-glob .git'
  alias ltl='exa --tree --long --level=2 --sort=name --ignore-glob .git'
  alias lta='exa --tree --long --level=2 --sort=name --all --ignore-glob .git'
else
  alias ls='ls -F --group-directories-first --color=auto'
  alias ll='ls -l --group-directories-first --color=auto'
  alias la='ls -a --group-directories-first --color=auto'
fi

# Fix: 'fd' which is an alternate to 'find' cmd
# after installing its executable will be named as 'fdfind' in 
# Ubuntu distribution. 
# if ! type -p fd 2>/dev/null; then
#   if type -p fdfind 2>/dev/null; then
#     alias fd='fdfind'
#   fi
# fi

alias mkdir='mkdir -pv'
alias s='print "Sourcing $HOME/.zshrc" && source $HOME/.zshrc'

# Git
alias ga='git add'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gr='git restore'
alias grs='git restore --staged'
alias lg='lazygit'
alias gb='git branch'

# tmux 
alias ta='tmux attach'

# Thank you @elijahmanor
# https://www.youtube.com/shorts/K1FxGIG_lcA
alias e='fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim'


# nnn alias
alias n="nnn"
