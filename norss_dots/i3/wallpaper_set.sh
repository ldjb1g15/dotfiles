#!/bin/bash

# set a wallpaper using wpg
wpg -m -n
# -o "$HOME/.config/dunst/launchdunst.sh"

current_wallpaper=$(wpg -c)
wallpaper_path="$HOME/Pictures/Wallpapers/current_wallpapers/$current_wallpaper"

echo "${wallpaper_path}"

# Generate pywal colour scheme
wal -i "${wallpaper_path}" -nst

# Set wallpaper from wal image
feh --bg-fill --no-xinerama $(< "${HOME}/.cache/wal/wal")

# Launch Dunst
. $HOME/.config/dunst/launchdunst.sh

# Polybar launch script
. /home/ldjb/.config/polybar/launch.sh
