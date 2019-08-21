#!/bin/bash

i=0
contadorMaximo=200

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "google chrome"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 7
/usr/bin/google-chrome-stable \
  "https://trello.com/b/I6weLRgf/ti-latife" \
  "https://web.whatsapp.com/" \
  "https://mail.google.com/mail/u/0/" > /dev/null 2>&1 &
