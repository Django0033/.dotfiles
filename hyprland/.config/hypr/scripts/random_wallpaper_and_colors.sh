#!/bin/zsh

echo 0

echo "Wallpaper directory set"
WALLPAPER_DIR="$HOME/Pictures/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)
echo "Select random wallpaper"

# hyprctl hyprpaper reload ,"$WALLPAPER"
waypaper --wallpaper $WALLPAPER

sleep 1

echo "Load wallpaper"

matugen image "$WALLPAPER"
echo "Set matugen colors"

killall waybar && waybar & disown

exit 0
