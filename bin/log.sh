#!/bin/bash

export ROOT_UID=0
super() {
  echo "${@}"
  if [[ $UID != $ROOT_UID ]]; then
    sudo "${@}"
  else
    $@
  fi
}

#######################################################
# output colors
#######################################################
atput() {
  [ -z "$TERM" ] && return 0
  eval "tput $@"
}
escape() {
  echo "$@" | sed "
    s/%{red}/$(atput setaf 1)/g;
    s/%{green}/$(atput setaf 2)/g;
    s/%{yellow}/$(atput setaf 3)/g;
    s/%{blue}/$(atput setaf 4)/g;
    s/%{magenta}/$(atput setaf 5)/g;
    s/%{cyan}/$(atput setaf 6)/g;
    s/%{white}/$(atput setaf 7)/g;
    s/%{bold}/$(atput bold atput setaf 7 atput sgr0)/g;
    s/%{reset}/$(atput sgr0)/g;
    s/%{[a-z]*}//g;
  "
}
log() {
  local level="$1"; shift
  case "${level}" in
  blue)
    local color="%{blue}"
    ;;
  yellow)
    local color="%{yellow}"
    ;;
    bold)
    local color="%{bold}"
    ;;
  esac

  if [[ $1 == "-n" ]]; then
    local opts="-n"
    shift
  fi

  if [[ $1 == "-e" ]]; then
    local opts="$opts -e"
    shift
  fi

  echo $opts "$(escape "${color}\$>%{reset} $@")"
}
blue() { log blue $@; }
yellow() { log yellow $@; }
bold() { log bold $@; }
function exec_and_log() {
  echo ""
  log bold "$@";
  $@;
}
#-----------------------------------------------------------#
