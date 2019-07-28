!#/bin/bash

# Generate pywal colour scheme
wal -i "$HOME/Pictures/Wallpapers/current_wallpapers" -n

# Set wallpaper from wal image
feh --bg-fill --no-xinerama $(< "${HOME}/.cache/wal/wal")

# Polybar launch script
. /home/ldjb/.config/polybar/launch.sh
