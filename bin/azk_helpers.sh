#!/bin/bash

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


#######################################################
# azk "ALIASES"
#######################################################

function bazk() {
  log yellow "using /usr/bin/azk";
  /usr/bin/azk $@;
}

#######################################################
#######################################################
# azk lauchers
#######################################################
#######################################################

  #######################################################
  ## azk dev
  #######################################################
function azk_subl() {
  exec_and_log cd ~/_git/azk
  exec_and_log subl ~/_git/azk/project.sublime-project
}

function z1_azk_start_agent() {
  exec_and_log sudo rm -rf /etc/resolver/dev.azk.io
  exec_and_log cd ~/_git/azk
  exec_and_log ./bin/azk agent start --no-daemon
}

function z2_azk_nvm_gulp_watch() {
  exec_and_log cd ~/_git/azk
  exec_and_log ./bin/azk nvm gulp watch
}

function z3_tail_sed_azk_log_files() {
  exec_and_log cd ~/_git/azk
  log bold "tail -f ~/.azk/data/logs/azk.log | sed -n '/\[postal\]/p' & tail -f ~/.azk/data/logs/azk_test.log | sed -n '/\[postal\]/p'";
  tail -f ~/.azk/data/logs/azk.log | sed -n '/\[postal\]/p' & tail -f ~/.azk/data/logs/azk_test.log | sed -n '/\[postal\]/p'
}

function ztests_run_all_azk_tests() {
  exec_and_log cd ~/_git/azk
  exec_and_log ./bin/azk nvm gulp test
}

  #######################################################
  ## azk dev with VM
  #######################################################
function zv1_azk_start_agent_with_VM() {
  exec_and_log sudo rm -rf /etc/resolver/dev.azk.io
  exec_and_log export AZK_USE_VM=true
  exec_and_log cd ~/_git/azk
  exec_and_log ./bin/azk agent start --no-daemon
}

function zvtests_run_all_azk_tests_with_VM() {
  exec_and_log export AZK_USE_VM=true
  exec_and_log cd ~/_git/azk
  exec_and_log ./bin/azk nvm gulp test
}

  #######################################################
  ## master azk
  #######################################################
function mazk_subl() {
  exec_and_log cd ~/_git/master-azk
  exec_and_log subl ~/_git/master-azk/project.sublime-project
}

function mz1_azk_start_agent() {
  exec_and_log cd ~/_git/master-azk
  exec_and_log ./bin/azk agent start --no-daemon
}

function mz2_azk_nvm_gulp_watch() {
  exec_and_log cd ~/_git/master-azk
  exec_and_log ./bin/azk nvm gulp watch
}

function mztests_run_all_azk_tests() {
  exec_and_log cd ~/_git/master-azk
  exec_and_log ./bin/azk nvm gulp test
}

  #######################################################
  ## azk button
  #######################################################
function abt_master() {
  exec_and_log sudo git remote rm azk_deploy
  exec_and_log git fetch --all --prune
  exec_and_log git checkout master
  exec_and_log git pull upstream master
}

function abt_rebase_azkfile_with_master() {
  exec_and_log git checkout azkfile && git rebase master
}

function abt_push_forcing() {
  exec_and_log git push origin --force
}
