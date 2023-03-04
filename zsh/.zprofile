if hash nvim then;
  export EDITOR=nvim
  # use nvim as manpager ':h Man'
  export MANPAGER='nvim +Man!'
else 
  export EDITOR=vim
fi
