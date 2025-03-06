
#!/bin/bash

# Check if picom is running and kill it
if pgrep -x "picom" > /dev/null; then
    echo "Killing picom..."
    killall picom
    # Wait for picom to be fully terminated
    while pgrep -x "picom" > /dev/null; do sleep 1; done
else
    echo "Picom is not running."
fi

echo "Waiting before starting picom..."
sleep 1

# Start picom in i3
echo "Starting picom..."
picom --experimental-backends --config ~/.config/picom/picom.conf &

sleep 1
