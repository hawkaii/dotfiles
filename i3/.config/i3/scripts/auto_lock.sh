#!/bin/bash

# Kill any existing xautolock process
killall xautolock

# Set xautolock to lock the screen after 1 hour of inactivity
xautolock -time 60 -locker "i3lock" &

# Set xset for 1 hour
xset s 3600
xset dpms 3600 3600 3600

