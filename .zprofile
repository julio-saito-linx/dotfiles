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

export ANDROID_HOME=/home/julio/Android/Sdk
export PATH=$PATH:/home/julio/Android/Sdk/tools

export LESS='-RXF'

# Man page configure
if [[ -f "$(which most 2> /dev/null)" ]]; then
  export MANPAGER="$(which most) -s"
fi


# configure azk dev envs
export AZK_ENV=development
