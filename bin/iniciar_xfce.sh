#!/bin/bash

i=0
length=30

while (( i < length ))
do
  /usr/bin/wmctrl -s 7
  result=`/usr/bin/wmctrl -d | grep "^\(7\)[ ]\+\*"; echo "$?"`

  if [ $result != 0 ]
    then
      echo "Aguarda mais um pouco"
      sleep 1
    else
      echo "Está no desktop 7"
      break
    fi

  ((i = i + 1))
done

/usr/bin/google-chrome-stable \
  --user-data-dir="/home/saito/.config/google-chrome-latife" \
  "https://trello.com/b/I6weLRgf/ti-latife" \
  "https://web.whatsapp.com/" \
  "https://mail.google.com/mail/u/0/"
