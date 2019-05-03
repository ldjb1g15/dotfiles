#!/bin/bash

# set color name
color="color1="


# get color string from wal file
colstr=$(grep $color $HOME/.cache/wal/colors.sh)


# get hex code
temp="$(cut -d'=' -f2 <<<"$colstr")"


# return color code
echo "\${color ${temp//\'}}\${time %A %d %B %Y}\${color}"
