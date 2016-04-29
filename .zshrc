export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="terminalparty"
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
# zsh-autosuggestions
plugins=(git rbates history-substring-search zsh-syntax-highlighting npm azk)
DEFAULT_USER=julio

. $ZSH/oh-my-zsh.sh
. ~/.nvm/nvm.sh

# enable helpers
. $HOME/_git/dotfiles/bin/azk_helpers.sh
. $HOME/_git/dotfiles/bin/git_helper.sh
. $HOME/_git/dotfiles/bin/utils.sh
. $HOME/_git/dotfiles/bin/xclip_helpers.sh
