#!/bin/bash

i=0
contadorMaximo=200

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "site-interno: abre e aguarda "
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 1
/usr/bin/xfce4-terminal \
  --working-directory='/home/saito/_git/latife/site/site-interno/' \
  -e='fish -c "cd /home/saito/_git/latife/site/site-interno; code .; npm start"' > /dev/null 2>&1 &

while (( i < contadorMaximo ))
do

  ACHOU_SE_ZERO=$(/usr/bin/wmctrl -l | grep "site-interno" > /dev/null 2>&1; echo "$?")
  if [ $ACHOU_SE_ZERO != 0 ]; then
    echo "$ACHOU_SE_ZERO, $i"
    sleep 1
  else
    echo "$ACHOU_SE_ZERO"
    exit 0
  fi

  ((i = i + 1))
done