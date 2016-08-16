export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="terminalparty"
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
# zsh-autosuggestions
plugins=(git rbates history-substring-search zsh-syntax-highlighting npm azk)
DEFAULT_USER=julio

. $ZSH/oh-my-zsh.sh
. ~/.nvm/nvm.sh

# enable numpad
setxkbmap -option numpad:microsoft

# enable helpers
. $HOME/_git/dotfiles/bin/azk_helpers.sh
. $HOME/_git/dotfiles/bin/git_helper.sh
. $HOME/_git/dotfiles/bin/utils.sh
. $HOME/_git/dotfiles/bin/xclip_helpers.sh


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /home/julio/.nvm/versions/node/v5.11.0/lib/node_modules/react-native-ignite/node_modules/tabtab/.completions/yo.zsh ]] && . /home/julio/.nvm/versions/node/v5.11.0/lib/node_modules/react-native-ignite/node_modules/tabtab/.completions/yo.zsh
###-tns-completion-start-###
if [ -f /home/julio/.tnsrc ]; then
    source /home/julio/.tnsrc
fi
###-tns-completion-end-###
