#!/bin/bash
set -e

# https://kapeli.com/cheat_sheets/Chromium_Command_Line_Switches.docset/Contents/Resources/Documents/index
CHROME_ARGS="--no-sandbox \
--disable-gpu \
--disable-dev-shm-usage \
--remote-debugging-address=$DEBUG_ADDRESS \
--remote-debugging-port=$DEBUG_PORT \
--user-data-dir=$HOME"

if [ -n "$CHROME_OPTS" ]; then
  CHROME_ARGS="${CHROME_ARGS} ${CHROME_OPTS}"
fi

# Start Chrome
exec sh -c "chrome $CHROME_ARGS"

# docker tag chromium devilmaydante/chromium:latest
# docker push devilmaydante/chromium:latest