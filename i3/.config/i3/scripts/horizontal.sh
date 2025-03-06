#!/bin/bash

# Set the display settings
xrandr --output eDP --primary --mode 1920x1080 --pos 1366x0 --rotate normal --output HDMI-A-0 --mode 1366x768 --pos 0x201 --rotate normal

# Set the background images
feh --bg-scale ~/dotfiles/backgrounds/haruhi_1.png --bg-fill ~/dotfiles/backgrounds/death-note-l-with-wings-dark-desktop-wallpaper.jpg
