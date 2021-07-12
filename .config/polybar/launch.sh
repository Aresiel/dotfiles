#!/bin/bash

# kill polybar
killall -q polybar

# wait for death
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
polybar bottombar &
polybar topbar &

echo "Polybar launched..."
