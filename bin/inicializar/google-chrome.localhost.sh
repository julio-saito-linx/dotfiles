#!/bin/bash

i=0
contadorMaximo=200

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "google chrome"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 3
/usr/bin/google-chrome-stable \
  --user-data-dir="/home/saito/.config/google-chrome-latife" \
  "http://localhost:3000" > /dev/null 2>&1 &
