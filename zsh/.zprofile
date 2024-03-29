local os_name=$(uname -s)
export XDG_CONFIG_HOME=$HOME/.config
export STOW_CONFIGS=$HOME/stow-configs

if hash nvim 2>/dev/null; then
  export EDITOR=nvim

  # use nvim as manpager ':h Man'
  export MANPAGER='nvim +Man!'
  export MANWIDTH=79
else 
  export EDITOR=vim
fi

#TODO: Delete these commented code after checking whether Mac setup works fine
# if [ -d /usr/local/go/bin ]; then
#   export PATH=$PATH:/usr/local/go/bin
# fi
# Do not add 'cmake*' to generalize, to $PATH, the executable resolution does't work as expected. 
# Hence adding it explicitly
# if [ -d /usr/local/cmake-3.25.3-linux-x86_64 ]; then
#   export PATH=$PATH:/usr/local/cmake-3.25.3-linux-x86_64/bin
# fi
# if [ -d $HOME/git-repos/zk ]; then
#   # Zettlekasten based a plain note-taking assistant
#   export PATH=$PATH:$HOME/git-repos/zk
# fi

if [[ "$os_name" == "Darwin" ]]; then
  export ZK_NOTEBOOK_DIR="$HOME/git-repos/zk-notes"
  export TASKRC="$HOME/git-repos/my-tasks/taskrc"
  export TASKDATA="$HOME/git-repos/my-tasks/data"
elif [[ "$os_name" == "Linux" ]]; then
  export ZK_NOTEBOOK_DIR="$HOME/git-repos/usr/sudhih/zk-notes"
  export TASKRC="$HOME/git-repos/usr/sudhih/my-tasks/taskrc"
  export TASKDATA="$HOME/git-repos/usr/sudhih/my-tasks/data"
  
  # TODO: Delete these Windows specific settings
  # if grep --ignore-case --quiet microsoft /proc/version; then
  #   if [ -d $HOME/onedrive/zk-trial ]; then
  #     # default 'notebook' for zk command
  #     export ZK_NOTEBOOK_DIR=$HOME/onedrive/zk-trial/
  #   fi
  #   if [ -d $HOME/onedrive/vault/taskwarrior/data ]; then
  #     export TASKRC=$HOME/onedrive/vault/taskwarrior/taskrc
  #     export TASKDATA=$HOME/onedrive/vault/taskwarrior/data
  #   fi
  #   if [ -d /home/sudhir/.nvm/versions/node/v16.16.0/bin ]; then
  #     export PATH=$PATH/home/sudhir/.nvm/versions/node/v16.16.0/bin
  #   fi
  # fi
fi

if [ -d $HOME/git-repos/exa/target/release ]; then
  export PATH=$PATH:$HOME/git-repos/exa/target/release
fi

if [ -d $HOME/.cargo ]; then
  # 'rustup' shell setup, required to run rust
  source $HOME/.cargo/env
fi

# `ripgrep` configuration
# if [ -f $XDG_CONFIG_HOME/ripgrep/ripgreprc ]; then
#   export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/ripgreprc
# fi

# `pyenv` setup
if [ -d $HOME/.pyenv ]; then
  export PYENV_ROOT="$HOME/.pyenv/"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  # IMP: this is required, to make switched python version is effective
  # the moment you switch using `pyenv global <version>`
  eval "$(pyenv init -)"
fi


