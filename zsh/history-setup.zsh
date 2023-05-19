# History setup

# Save command history in this file
export hist_file="$HOME/.zsh_history"

# Max number of lines to be saved in history file
export save_hist=10000

# Number of lines to read from $HISTFILE at the start of interactive session
export hist_size=$SAVEHIST

# don't record an event that was just recorded again
setopt hist_ignore_dups

# expire duplicate event first when trimming history
# when, writing to history file, at the end of session probably?
setopt hist_expire_dups_first

# don't record write duplicate even to the history file
setopt hist_save_no_dups

# don't store `history` or `fc` commands
setopt hist_no_store

# ignore commands that start with space. 
# Use this technique if you intentionally want to ignore
# certain commands from saving into history
setopt hist_ignore_space

# share history between all sessions
setopt share_history
