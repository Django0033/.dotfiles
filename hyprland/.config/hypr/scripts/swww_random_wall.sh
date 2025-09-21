#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Select a random wallpaper
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)

# Copy the random wallpaper to the cache
cp $RANDOM_WALLPAPER ~/.cache/current_wallpaper.jpg

# Start the swww-daemon if it's not already running
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon &
    sleep 1 # Give the daemon a moment to start
fi

# Set the wallpaper with swww, including a random transition (optional)
# if [ -n "$RANDOM_WALLPAPER" ]; then
#     swww img "$RANDOM_WALLPAPER" \
#         --transition-type random \
#         --transition-fps 60 \
#         # --transition-duration 0.7
#         --transition-duration 1
# fi

# Load wallpaper
swww img ~/.cache/current_wallpaper.jpg \
    --transition-type random \
    --transition-fps 60 \
    --transition-duration 1

matugen image ~/.cache/current_wallpaper.jpg

killall waybar && waybar & disown
