if hash nvim 2>/dev/null; then
  export EDITOR=nvim

  # use nvim as manpager ':h Man'
  export MANPAGER='nvim +Man!'
else 
  export EDITOR=vim
fi

if [ -d /usr/local/go/bin ]; then
  export PATH=$PATH:/usr/local/go/bin
fi

if [ -d $HOME/git-repos/zk ]; then
  # Zettlekasten based a plain note-taking assistant
  export PATH=$PATH:$HOME/git-repos/zk
fi

