export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="muse"
plugins=(git rbates history-substring-search zsh-syntax-highlighting npm azk)

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

export EDITOR='atom'
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
