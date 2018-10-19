#!/bin/bash

# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -
echo ""
echo "telegram"
# - -  - -  - -  - -  - -  - -  - -  - -  - -  - -  - -

/usr/bin/wmctrl -s 7
/usr/bin/telegram-desktop > /dev/null 2>&1 &
