#!/bin/bash

sleep 1

# Wallpapers directory
WALLPAPER_DIR="$HOME/Pictures/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

hyprpaper & disown

sleep 1

hyprctl hyprpaper reload ,"$WALLPAPER"

sleep 1

wallust -q run "$WALLPAPER"

matugen image "$WALLPAPER"

killall waybar && waybar & disown

exit 0
