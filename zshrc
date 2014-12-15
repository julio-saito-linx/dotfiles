export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/_git/azk/bin:$PATH"

ZSH_THEME="muse"

# DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"

plugins=(git rbates history-substring-search zsh-syntax-highlighting git-hubflow)

export PATH="/usr/local/bin:$PATH"
export EDITOR='subl -n -w'

source $ZSH/oh-my-zsh.sh
