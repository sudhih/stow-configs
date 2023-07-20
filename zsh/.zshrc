# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# we use `zap` as zsh plugin manager
# https://github.com/zap-zsh/zap
# TODO: enclose this within WSL or Macbook condition
source $HOME/.local/share/zap/zap.zsh

plug "zap-zsh/supercharge"
plug "zap-users/zsh-autosuggestions"
plug "romkatv/powerlevel10k"

setopt INTERACTIVE_COMMENTS       # Allow in-line comments in interactive mode
setopt PROMPT_SUBST               # subject prompt string, first to, parameter expansion, cmd substitution & arithmatic expansion

# TODO:
# enclose this in switch-case/if-else to handle both mac-book & WSL 
source $HOME/stow-configs/zsh/history-setup.zsh
source $HOME/stow-configs/zsh/aliases.zsh
source $HOME/stow-configs/zsh/key-bindings.zsh

# Aliases for switching nvim configuration
alias nvim-lazy="NVIM_APPNAME=lazyvim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart.nvim nvim"
alias nvim-my-nvim="NVIM_APPNAME=my-nvim nvim"

function nvims() {
  configs=("lazyvim" "kickstart.nvim" "my-nvim" "default")
  selected=$(printf "%s\n" "${configs[@]}" | fzf --prompt="  Neovim Config  " --height=50% --layout=reverse --border --exit-0)
  if [[ -z $selected ]]; then
    echo "Nothing Selected"
    return 0
  elif [[ $selected == "default" ]]; then
    $selected=""
  fi
  NVIM_APPNAME=$selected nvim $@
}

# bindkey -s ^q "nvims\n"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$HOME/.local/bin/:$PATH
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
