#!/bin/bash

i=0
contadorMaximo=30

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "Aguarda para workspace 1"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

while (( i < contadorMaximo ))
do
  /usr/bin/wmctrl -s 1
  result=`/usr/bin/wmctrl -d | grep "^\(1\)[ ]\+\*"; echo "$?"`

  if [ $result != 0 ]
    then
      echo "."
      sleep 1
    else
      echo "achou!"
      break
    fi

  ((i = i + 1))
done



# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "site-interno: abre e aguarda "
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
/usr/bin/wmctrl -s 1
/usr/bin/xfce4-terminal \
  --working-directory='/home/saito/_git/latife/site/site-interno/' \
  -e='zsh -c "cd /home/saito/_git/latife/site/site-interno; code .; npm start; zsh"'

i=0
while (( i < contadorMaximo ))
do
  /usr/bin/wmctrl -s 1
  result=`/usr/bin/wmctrl -l | grep "1 linuxjulio site-interno"; echo "$?"`

  if [ $result != 0 ]
    then
      echo "."
      sleep 1
    else
      echo "achou!"
      break
    fi

  ((i = i + 1))
done

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "servidor: abre e aguarda "
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
/usr/bin/wmctrl -s 0
/usr/bin/xfce4-terminal \
  --working-directory='/home/saito/_git/latife/servidor' \
  -e='zsh -c "cd /home/saito/_git/latife/servidor; code .; npm start; zsh"'

i=0
while (( i < contadorMaximo ))
do
  result=`/usr/bin/wmctrl -l | grep "0 linuxjulio servidor"; echo "$?"`

  if [ $result != 0 ]
    then
      echo "."
      sleep 1
    else
      echo "achou!"
      break
    fi

  ((i = i + 1))
done


# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "google chrome"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 7
/usr/bin/google-chrome-stable \
  --user-data-dir="/home/saito/.config/google-chrome-latife" \
  "https://trello.com/b/I6weLRgf/ti-latife" \
  "https://web.whatsapp.com/" \
  "https://mail.google.com/mail/u/0/" > /dev/null 2>&1 &

/usr/bin/telegram-desktop > /dev/null 2>&1 &
