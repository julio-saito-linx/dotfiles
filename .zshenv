export EDITOR='vim'
export LESS='-RXF'

#Android Studio
# export PATH="/home/julio/android-studio/bin:$PATH"
# export PATH="/home/julio/Android/Sdk/tools:$PATH"
# export PATH="/home/julio/Android/Sdk/platform-tools:$PATH"
# export ANDROID_HOME=~/Android/Sdk
# export ANDROID_HOME=~/Android/Sdk/platform-tools
# export IBUS_ENABLE_SYNC_MODE=1
# export ANDROID_HOME=/home/julio/Android/Sdk

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

# configure azk dev envs
# export AZK_ENV=development
