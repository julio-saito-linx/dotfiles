export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="terminalparty"
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
# zsh-autosuggestions
plugins=(git rbates history-substring-search zsh-syntax-highlighting npm azk)
DEFAULT_USER=julio

#Android Studio
export PATH="/home/julio/android-studio/bin:$PATH"
export IBUS_ENABLE_SYNC_MODE=1

# PATHS
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules
export PATH="/usr/local/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH="$HOME/_git/dotfiles/flow:$PATH"
# get my dotfiles bin accessible
export PATH="$HOME/_git/dotfiles/bin:$PATH"
# azk
azk_clone_path="$HOME/_git/azk"
if [ -d "${azk_clone_path}/bin" ]; then
  export PATH="${azk_clone_path}/bin:$PATH"
fi

export EDITOR='subl'
export LESS='-RXF'
. $ZSH/oh-my-zsh.sh
. ~/.nvm/nvm.sh

# Man page configure
if [[ -f "$(which most 2> /dev/null)" ]]; then
  export MANPAGER="$(which most) -s"
fi


# configure azk dev envs
export AZK_ENV=development

# enable helpers
. $HOME/_git/dotfiles/bin/azk_helpers.sh
. $HOME/_git/dotfiles/bin/git_helper.sh
. $HOME/_git/dotfiles/bin/utils.sh
. $HOME/_git/dotfiles/bin/xclip_helpers.sh
###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###
###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###
