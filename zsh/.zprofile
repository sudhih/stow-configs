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

# Do not add 'cmake*' to generalize, to $PATH, the executable resolution does't work as expected. 
# Hence adding it explicitly
if [ -d /usr/local/cmake-3.25.3-linux-x86_64 ]; then
  export PATH=$PATH:/usr/local/cmake-3.25.3-linux-x86_64/bin
fi

if [ -d $HOME/git-repos/zk ]; then
  # Zettlekasten based a plain note-taking assistant
  export PATH=$PATH:$HOME/git-repos/zk
fi

if [ -d $HOME/onedrive/zk-trial ]; then
  # default 'notebook' for zk command
  export ZK_NOTEBOOK_DIR=$HOME/onedrive/zk-trial/
fi

if [ -d $HOME/git-repos/exa/target/release ]; then
  export PATH=$PATH:$HOME/git-repos/exa/target/release
fi

if [ -d $HOME/.cargo ]; then
  # 'rustup' shell setup, required to run rust
  source $HOME/.cargo/env
fi

if [ -d $HOME/onedrive/vault/taskwarrior/data ]; then
  export TASKRC=$HOME/onedrive/vault/taskwarrior/taskrc
  export TASKDATA=$HOME/onedrive/vault/taskwarrior/data
fi

# Load `pyenv` automatically
if hash pyenv 2>/dev/null; then
	export PYENV_ROOT="$HOME/.pyenv/"
	command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi

export PATH="$PATH:$HOME/stow-configs/bin/.local/scripts"
#  thank you @theprimagen
bindkey -s ^f "tmux-sessionizer\n"
