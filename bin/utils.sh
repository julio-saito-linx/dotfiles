#!/bin/bash

#######################################################
## utilitários
#######################################################

function serv() {
  exec_and_log cd ~/_git/latife/servidor
  exec_and_log code .
  exec_and_log npm start
}
function site() {
  exec_and_log cd ~/_git/latife/site/site-interno
  exec_and_log code .
  exec_and_log npm start
}
