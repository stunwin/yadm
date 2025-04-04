#!/bin/bash

# Get player (fallback to any if browser not found)
player=$(playerctl -l 2>/dev/null | grep -E 'firefox|chromium|chrome' | head -n 1)
player=${player:-$(playerctl -l 2>/dev/null | head -n 1)}

# If no player found
if [ -z "$player" ]; then
    echo "{\"text\": \"🎵 No media\", \"tooltip\": \"Nothing playing\"}"
    exit
fi

# Get metadata
title=$(playerctl -p "$player" metadata title 2>/dev/null)
artist=$(playerctl -p "$player" metadata artist 2>/dev/null)
status=$(playerctl -p "$player" status 2>/dev/null)

# Choose icon
if [ "$status" = "Playing" ]; then
    icon=""
else
    icon=""
fi

# Output JSON for Waybar
echo "{\"text\": \"  $icon    $artist - $title\", \"tooltip\": \"$status: $artist - $title\"}"
