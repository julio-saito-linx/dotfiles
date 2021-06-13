#!/bin/bash

i=0
contadorMaximo=10

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "hasura latife interno 2"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 0
/usr/bin/xfce4-terminal \
  --working-directory='/home/saito/_git/latife-hasura/' \
  -e='fish -c "cd /home/saito/_git/latife-hasura/; code .; npm start"' > /dev/null 2>&1 &

while (( i < contadorMaximo ))
do
  
  ACHOU_SE_ZERO=$(/usr/bin/wmctrl -l | grep "latife-hasura" > /dev/null 2>&1; echo "$?")
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