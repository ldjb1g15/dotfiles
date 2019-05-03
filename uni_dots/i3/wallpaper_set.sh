!#/bin/bash

# Generate pywal colour scheme
wal -i "$HOME/.config/i3/Wallpapers" -n

# Set wallpaper from wal image
feh --bg-fill --no-xinerama $(< "${HOME}/.cache/wal/wal")

# Polybar launch script
. /home/ldjb/.config/polybar/launch.sh
