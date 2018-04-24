export EDITOR='code'
export REACT_EDITOR='code'
export LESS='-RXF'

# PATHS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="/usr/local/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
# get my dotfiles bin accessible
export PATH="$HOME/_git/dotfiles/bin:$PATH"

# Man page configure
if [[ -f "$(which most 2> /dev/null)" ]]; then
  export MANPAGER="$(which most) -s"
fi

