#!/bin/bash

# bazk install by linux package
if [ -f "/usr/bin/azk" ]; then
  alias bazk='/usr/bin/azk'
fi

function azkatom() {
  cd ~/_git/azk
  atom ~/_git/azk
}

function z1_azk_start_agent() {
  cd ~/_git/azk
  ./bin/azk agent start --no-daemon
}

function z2_azk_nvm_gulp_watch() {
  cd ~/_git/azk
  ./bin/azk nvm gulp watch
}

function z3_tail_sed_azk_log_files() {
  cd ~/_git/azk
  tail -f ~/.azk/data/logs/azk.log | sed -n '/\[postal\]/p' & tail -f ~/.azk/data/logs/azk_test.log | sed -n '/\[postal\]/p'
}
