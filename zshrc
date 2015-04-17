export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/_git/azuki/azk/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"

ZSH_THEME="muse"

# DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"

plugins=(git rbates history-substring-search zsh-syntax-highlighting)

export PATH="/usr/local/bin:$PATH"
export EDITOR='subl -n -w'
export LESS='-RXF'

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh

# Man page configure
if [[ -f "$(which most 2> /dev/null)" ]]; then
    export MANPAGER="$(which most) -s"
fi




# A shortcut function that simplifies usage of xclip.
# - Accepts input from either stdin (pipe), or params.
# http://madebynathan.com/2011/10/04/a-nicer-way-to-use-xclip/
# ------------------------------------------------
cb() {
  local _scs_col="\e[0;32m"; local _wrn_col='\e[1;31m'; local _trn_col='\e[0;33m'
  # Check that xclip is installed.
  if ! type xclip > /dev/null 2>&1; then
    echo -e "$_wrn_col""You must have the 'xclip' program installed.\e[0m"
  # Check user is not root (root doesn't have access to user xorg server)
  elif [[ "$USER" == "root" ]]; then
    echo -e "$_wrn_col""Must be regular user (not root) to copy a file to the clipboard.\e[0m"
  else
    # If no tty, data should be available on stdin
    if ! [[ "$( tty )" == /dev/* ]]; then
      input="$(< /dev/stdin)"
    # Else, fetch input from params
    else
      input="$*"
    fi
    if [ -z "$input" ]; then  # If no input, print usage message.
      echo "Copies a string to the clipboard."
      echo "Usage: cb <string>"
      echo "       echo <string> | cb"
    else
      # Copy input to clipboard
      echo -n "$input" | xclip -selection c
      # Truncate text for status
      if [ ${#input} -gt 80 ]; then input="$(echo $input | cut -c1-80)$_trn_col...\e[0m"; fi
      # Print status.
      echo -e "$_scs_col""Copied to clipboard:\e[0m $input"
    fi
  fi
}

# Aliases / functions leveraging the cb() function
# ------------------------------------------------

# Copy contents of a file
function cbf() { cat "$1" | cb; }

# Copy SSH public key
alias cbssh="cbf ~/.ssh/id_rsa.pub"

# Copy current working directory
alias cbwd="pwd | cb"

# Copy most recent command in bash history
alias cbhs="cat $HISTFILE | tail -n 1 | cb"
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules
