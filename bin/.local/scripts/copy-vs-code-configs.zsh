#!/usr/bin/zsh

# This tool is to copy settings of VSCode editor, which is 
# installed on Windows platform, to a repo in WSL.

# source: Windows vs-code user configs under %AppData%
vscode_usr_configs=/mnt/c/Users/sudhir.hanumanthappa/AppData/Roaming/Code/User/

# destination: git repo path
repo_dest=$STOW_CONFIGS/vs-code/User

# config files
settings="settings.json"
kbinds="keybindings.json"
tasks="tasks.json"
snips="snippets/"

# Copy only those files which is modified with `--update`
# Copy snippets folder recursively with `--recursive`
# Print filename which actually gets copied, with `--verbose`
cp --verbose --recursive --update $vscode_usr_configs{$settings,$kbinds,$tasks,$snips} $repo_dest
