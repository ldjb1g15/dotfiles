!#/bin/bash

killall back4.sh

# Generate pywal colour scheme
wal -i "/home/ldjb/Pictures/Wallpapers" -n

# Set wallpaper from wal image
feh --bg-fill --no-xinerama $(< "${HOME}/.cache/wal/wal")

# Polybar launch script
. /home/ldjb/.config/polybar/launch.sh
