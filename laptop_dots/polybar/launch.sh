#!/bin/bash

# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar

# Wait until the processes have been shut down
#while grep -x polybar >/dev/null; do sleep 1; done

# Generate colour environment variables
. /home/ldjb/.cache/wal/colors.sh

# Environment Variables
# Filesystem
export FILE_LABEL="%mountpoint%:  %{F$color7}%percentage_used%%%{F-}"
# CPU
export CPU_LABEL="CPU %{F$color7}[%percentage%%]%{F-}"
# Date
export DATE_LABEL="  | %date% %{F$color7}%time%%{F-}"
# Memory
export MEM_LABEL="RAM %{F$color7}[%percentage_used%%]%{F-}"
# Network
export NET_LABEL="%essid% %local_ip% %{F$color2}  %{F-}"
# Pulseaudio
export PULSE_LABEL="%{F$color7} %{F-} %{F$color5} %{F-}"
# Battery
export BATTERY_LABEL="%{F$color3}%{F-} %{F$color7}%percentage%%%{F-}"
# Backlight
export BACKLIGHT_LABEL="%{F$color3}%{F-} %{F$color7}%percentage%%%{F-}"

# Background Colour with Transparency
backstr=$color0
rgb_str=${backstr:1:6}
alpha_val="E6"
export BACK_COL="$alpha_val$rgb_str"
echo $BACK_COL

# Launch the example bar
polybar bottom_bar &
polybar top_bar &
# polybar i3_bar &
