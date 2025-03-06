#!/bin/bash

# Path to your MP3 files
MP3_DIR="$HOME/Music"

# Start VLC in the background with looping enabled
cvlc --loop "$MP3_DIR"/*.ogg &

# Save the process ID of VLC
VLC_PID=$!

# Wait for VLC to start properly
sleep 1

# Set the volume to 1% using playerctl
playerctl --player=vlc volume 0.01

# Wait for the VLC process to end
wait $VLC_PID

