#!/bin/bash

i=0
contadorMaximo=200

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "servidor: abre e aguarda "
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 0
/usr/bin/xfce4-terminal \
  --working-directory='/home/saito/_git/latife/servidor' \
  -e='fish -c "cd /home/saito/_git/latife/servidor; code .; npm start"' > /dev/null 2>&1 &

while (( i < contadorMaximo ))
do
  
  ACHOU_SE_ZERO=$(/usr/bin/wmctrl -l | grep "0 linuxjulio servidor" > /dev/null 2>&1; echo "$?")
  if [ $ACHOU_SE_ZERO != 0 ]; then
    echo "$ACHOU_SE_ZERO, $i"
    sleep 1
  else
    echo "$ACHOU_SE_ZERO"
    exit 0
  fi

  ((i = i + 1))
done