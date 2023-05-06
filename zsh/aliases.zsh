if hash exa 2>/dev/null; then
  alias ls='exa --grid --icons --group-directories-first --sort=name'
  alias ll='exa --long --icons --grid --group-directories-first --sort=name'
  alias la='exa --all --grid --group-directories-first'
  alias lt='exa --tree --level=2 --sort=name '
else
  alias ls='ls -F --group-directories-first --color=auto'
  alias ll='ls -l --group-directories-first --color=auto'
  alias la='ls -a --group-directories-first --color=auto'
fi

alias mkdir='mkdir -pv'
