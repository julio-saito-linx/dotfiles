#!/bin/bash

atput() {
  [ -z "$TERM" ] && return 0
  eval "tput $@"
}

function save() {
  commit_message="$1"

  ROOT_UID=0
  super() {
    echo "${@}"
    if [[ $UID != $ROOT_UID ]]; then
      sudo "${@}"
    else
      $@
    fi
  }

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

  echo    ""
  echo    "  ${MAGENTA}------------------------------${RESET}"
  echo    "  ${MAGENTA}------------------------------${RESET}"
  echo    "  !! PUSHING CODE..."
  echo    "  ${MAGENTA}------------------------------${RESET}"
  echo    "  ${MAGENTA}------------------------------${RESET}"

  echo    ""
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo    "  changing project files permitions to '$USER'"
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo    "  ${WHITE}${BOLD}$ sudo chown -R `id -un`:`id -gn` .${RESET}"
  echo    ""
  super chown -R `id -un`:`id -gn` .


  echo    ""
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo    "  ${WHITE}${BOLD}$ git status${RESET}"
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  git status


  echo    ""
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo    "  ${WHITE}${BOLD}$ git diff HEAD${RESET}"
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo -n " ['y/N'] "
  read -k 1 -s git_diff_yes
  echo "=$git_diff_yes"

  echo    ""
  echo    ""
  echo    ""
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo    "  ${WHITE}${BOLD}$ git add . -A${RESET}"
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  git add . -A

  if [ "$git_diff_yes" = "y" ]; then
    git diff HEAD
    echo    "  EXIT git diff"
    echo    ""
  fi

  if [ "$commit_message" != "" ]; then
    echo    ""
    echo    " current commit message: ${WHITE}${BOLD}$'$commit_message'${RESET}"
    echo    ""
    echo -n " [ press ${WHITE}${BOLD}$Ctrl + C${RESET} to abort ] "
    read -k 1

    echo    ""
    echo    "  ${GREEN}-----------------------------------------------${RESET}"
    echo    "  ${WHITE}${BOLD}$ git commit -m '$commit_message'${RESET}"
    echo    "  ${GREEN}-----------------------------------------------${RESET}"
    git commit -m "$commit_message"
  else

    echo    ""
    echo    "  ${GREEN}-----------------------------------------------${RESET}"
    echo    "  ${WHITE}${BOLD}$ starting vim...${RESET}"
    echo    "  ${GREEN}-----------------------------------------------${RESET}"
    git commit
  fi

  echo    ""
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  echo    "  ${WHITE}${BOLD}$ git push${RESET}"
  echo    "  ${GREEN}-----------------------------------------------${RESET}"
  git push
}
