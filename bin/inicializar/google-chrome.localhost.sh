#!/bin/bash

i=0
contadorMaximo=200

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "google chrome"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 3
/usr/bin/google-chrome-stable \
  "http://localhost:3000" > /dev/null 2>&1 &
