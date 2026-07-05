#!/bin/bash
bat=/sys/class/power_supply/qcom-battmgr-bat
full=$(grep ENERGY_FULL= $bat/uevent | cut -d= -f2)
now=$(grep ENERGY_NOW= $bat/uevent | cut -d= -f2)
status=$(grep STATUS= $bat/uevent | cut -d= -f2)

if [ -n "$full" ] && [ -n "$now" ] && [ "$full" -gt 0 ]; then
  pct=$(( now * 100 / full ))
  if [ "$pct" -gt 90 ]; then icon=""
  elif [ "$pct" -gt 60 ]; then icon=""
  elif [ "$pct" -gt 30 ]; then icon=""
  else icon=""; fi
  echo "$icon $pct% $status"
else
  echo " ?"
fi
