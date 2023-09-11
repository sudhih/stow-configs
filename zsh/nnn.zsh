# default `nnn` option
  # -E internal edits in EDITOR
  # -e text in $VISUAL/$EDITOR
  # -n type-to-nav mode
  # -r use advanced cp, mv patch
export NNN_OPTS="er"

# few plugins such `preview-tui` needs FIFO file
export NNN_FIFO='/tmp/nnn.fifo'

# key-plugin pairs
export NNN_PLUG='o:fzopen;j:autojump;p:preview-tui'

# set/export NNN_ICONLOOKUP as 1 to enable file icons in front of directory previews with .iconlookup
export NNN_ICONLOOKUP=1
