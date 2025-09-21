#!/bin/bash

# read -p "Route to your: " WALL
# WALL=$(find . -type f | fzf)
WALL=$(find ~/Pictures/wallpapers -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.gif" \) | fzf --preview="kitty +kitten icat --transfer-mode memory {}")
# WALL=~/Pictures/wallpapers/wallpaper-engine-hero.jpg

echo $WALL

# Copy the random wallpaper to the cache
cp $WALL ~/.cache/current_wallpaper.jpg

# Start the swww-daemon if it's not already running
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon &
    sleep 1 # Give the daemon a moment to start
fi

# Load wallpaper
swww img ~/.cache/current_wallpaper.jpg \
    --transition-type random \
    --transition-fps 60 \
    --transition-duration 1

matugen image ~/.cache/current_wallpaper.jpg

killall waybar && waybar & disown
