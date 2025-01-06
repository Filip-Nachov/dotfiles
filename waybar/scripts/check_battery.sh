#!/bin/sh

bat=/sys/class/power_supply/BAT1
CRIT=${1:-15}
FILE=~/.config/waybar/scripts/notified

if [ ! -d "$bat" ]; then
  echo "Battery information not found."
  exit 1
fi

stat=$(cat $bat/status 2>/dev/null)
perc=$(cat $bat/capacity 2>/dev/null)

if [ $? -ne 0 ]; then
  echo "Failed to read battery status or capacity."
  exit 1
fi

if [ "$perc" -le "$CRIT" ] && [ "$stat" = "Discharging" ]; then
  if [ ! -f "$FILE" ]; then
    notify-send --urgency=critical --icon=dialog-warning "Battery Low" "Current charge: $perc%"
    touch "$FILE"
  fi
elif [ -f "$FILE" ]; then
  rm "$FILE"
fi

