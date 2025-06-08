#!/bin/bash

# read -p "Route to your: " WALL
WALL=$(find . -type f | fzf)
# WALL=~/Pictures/wallpapers/wallpaper-engine-hero.jpg

echo $WALL

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALL"
hyprctl hyprpaper wallpaper ",$WALL"

sleep 1

matugen image "$WALL"

# wallust -q run "$WALL"

killall waybar && waybar & disown

exit 0
