#!/bin/bash

# Get the current track info from cmus
cmus_info=$(cmus-remote -Q 2>/dev/null)
if [ $? -eq 0 ]; then
    title=$(echo "$cmus_info" | grep 'title' | cut -d ' ' -f 2-)
    artist=$(echo "$cmus_info" | grep 'artist' | cut -d ' ' -f 2-)
    status=$(echo "$cmus_info" | grep 'status' | cut -d ' ' -f 2-)

    if [ "$status" = "playing" ]; then
        emoji=""  # Music note for playing
        echo "{\"text\": \"$emoji $title - $artist\", \"tooltip\": \"Playing: $title - $artist\"}"
    elif [ "$status" = "paused" ]; then
        emoji="󰐎"  # Pause button for paused
        echo "{\"text\": \"$emoji $title - $artist\", \"tooltip\": \"Paused: $title - $artist\"}"
    else
        echo "{\"text\": \"❌ No track playing\", \"tooltip\": \"\"}"
    fi
else
    echo "{\"text\": \" No cmus\", \"tooltip\": \"cmus is not running\"}"
fi

