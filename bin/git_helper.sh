#!/bin/bash

atput() {
  [ -z "$TERM" ] && return 0
  eval "tput $@"
}

function save() {
  commit_message="$1"

  if atput setaf 1 &> /dev/null; then
      atput sgr0
      if [[ $(atput colors) -ge 256 ]] 2>/dev/null; then
        MAGENTA=$(atput setaf 9)
        ORANGE=$(atput setaf 172)
        GREEN=$(atput setaf 190)
        PURPLE=$(atput setaf 141)
        WHITE=$(atput setaf 256)
      else
        MAGENTA=$(atput setaf 5)
        ORANGE=$(atput setaf 4)
        GREEN=$(atput setaf 2)
        PURPLE=$(atput setaf 1)
        WHITE=$(atput setaf 7)
      fi
      BOLD=$(atput bold)
      RESET=$(atput sgr0)
  else
      MAGENTA="\033[1;31m"
      ORANGE="\033[1;33m"
      GREEN="\033[1;32m"
      BLUE="\033[1;34m"
      PURPLE="\033[1;35m"
      WHITE="\033[1;37m"
      BOLD=""
      RESET="\033[m"
  fi

  git status

  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo    "  ${WHITE}${BOLD}$ git diff HEAD${RESET}"
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo -n " [y/${BOLD}N${RESET}] "
  read -k 1 -s git_diff_yes
  echo "=$git_diff_yes"

  if [ "$git_diff_yes" = "y" ]; then
    git diff HEAD
    echo    "  EXIT git diff"
  fi

  if [ "$commit_message" != "" ]; then
    echo    " ${WHITE}${BOLD}$commit_message${RESET}"
    echo    ""
    echo -n " [ ${MAGENTA}press any key to ${BOLD}push${RESET}${MAGENTA} or Ctrl+C to ${BOLD}abort${RESET}${RESET} ] "
    read -k 1

    git commit -m "$commit_message"
  fi

  echo    "  ${WHITE}${BOLD}$ git push${RESET}"
  git push

}
