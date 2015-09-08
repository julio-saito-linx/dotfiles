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

# keen-io azk
export AZK_KEEN_PROJECT_ID=5526968d672e6c5a0d0ebec6
export AZK_KEEN_WRITE_KEY=5dbce13e376070e36eec0c7dd1e7f42e49f39b4db041f208054617863832309c14a797409e12d976630c3a4b479004f26b362506e82a46dd54df0c977a7378da280c05ae733c97abb445f58abb56ae15f561ac9ad774cea12c3ad8628d896c39f6e702f6b035541fc1a562997cb05768

# configure azk dev envs
export AZK_SUBSCRIBE_POSTAL=#
export AZK_OUTPUT_LOG_LEVEL=warn
export AZK_LOG_LEVEL=debug
export BLUEBIRD_DEBUG=1

# enable helpers
. $HOME/_git/dotfiles/bin/azk_helpers.sh
. $HOME/_git/dotfiles/bin/git_helper.sh
. $HOME/_git/dotfiles/bin/utils.sh
. $HOME/_git/dotfiles/bin/xclip_helpers.sh
