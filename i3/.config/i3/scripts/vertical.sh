#!/bin/bash

# Set the display settings
xrandr --output eDP --primary --mode 1920x1080 --pos 890x143 --rotate normal --output HDMI-A-0 --mode 1366x768 --pos 0x0 --rotate left
# Set the background images
feh --bg-scale ~/dotfiles/backgrounds/haruhi_1.png --bg-fill ~/dotfiles/backgrounds/evangalion.jpeg
