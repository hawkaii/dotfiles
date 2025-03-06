#!/bin/bash

# Kill existing polybar instances
killall -q polybar

# Wait for processes to be shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on both monitors
polybar example &

echo "Polybar launched on both monitors..."

