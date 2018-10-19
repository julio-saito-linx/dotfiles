#!/bin/bash

/home/saito/_git/dotfiles/bin/inicializar/wmctrl-assegura-workspace1.sh > /tmp/_00_executar.log; \
/home/saito/_git/dotfiles/bin/inicializar/site-interno.sh >> /tmp/_00_executar.log; \
/home/saito/_git/dotfiles/bin/inicializar/servidor.sh >> /tmp/_00_executar.log; \
# /home/saito/_git/dotfiles/bin/inicializar/telegram.sh >> /tmp/_00_executar.log; \
/home/saito/_git/dotfiles/bin/inicializar/google-chrome.sh >> /tmp/_00_executar.log
