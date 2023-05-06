# History setup

# Save command history in this file
export HISTFILE="$HOME/.zsh_history"

# Max number of lines to be saved in history file
export SAVEHIST=10000

# Number of lines to read from $HISTFILE at the start of interactive session
export HISTSIZE=$SAVEHIST

# Do not save history line if it matches previous one
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS
# don't store `history` or `fc` commands
setopt HIST_NO_STORE
# ignore commands that start with space. Use this technique if you intentionally want to ignore
# certain commands from saving into history
setopt HIST_IGNORE_SPACE
# -------------------

