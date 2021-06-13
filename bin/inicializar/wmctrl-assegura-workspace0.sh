#!/bin/bash

i=0
contadorMaximo=10

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "Aguarda para workspace 0"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

while (( i < contadorMaximo ))
do
  /usr/bin/wmctrl -s 0

  ACHOU_SE_ZERO=$(/usr/bin/wmctrl -d | grep "^\(0\)[ ]\+\*" > /dev/null 2>&1; echo "$?")
  if [ $ACHOU_SE_ZERO != 0 ]; then
    echo "$ACHOU_SE_ZERO, $i"
    sleep 1
  else
    echo "$ACHOU_SE_ZERO"
    exit 0
  fi

  ((i = i + 1))
done

exit 99
