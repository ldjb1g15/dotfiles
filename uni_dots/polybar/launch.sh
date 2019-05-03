#!/bin/bash

# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar

# Wait until the processes have been shut down
#while grep -x polybar >/dev/null; do sleep 1; done

# Generate colour environment variables
. $HOME/.cache/wal/colors.sh

# Environment Variables

# Filesystem
export FILE_LABEL="%mountpoint%:  %{F$color7}%percentage_used%%%{F-}"

# Date
export DATE_LABEL="%date% %{F$color7}%time%%{F-}"

# CPU
# export CPU_LABEL="CPU %{F$color7}[%percentage%%]%{F-}"
export CPU_LABEL="CPU"

# Memory
# export MEM_LABEL="RAM %{F$color7}[%percentage_used%%]%{F-}"
export MEM_LABEL="RAM"

# Network
export NET_LABEL="%{F$color3}  %{F-} %{F#00FF00}  %{F-}%{F$color7}%downspeed:9%%{F-} %{F#FF0000}  %{F-}%{F$color7}%upspeed:9%%{F-}"

# Pulseaudio
# export PULSE_LABEL="%{F$color7} %{F-} %{F$color5} %{F-}"
export PULSE_LABEL="%percentage%%"

# Background Colour with Transparency
backstr=$color0
rgb_str=${backstr:1:6}
alpha_val="E6"
export BACK_COL="$alpha_val$rgb_str"
echo $BACK_COL

# Launch the example bar
# polybar time_bar_left &
polybar left &
# polybar time_bar_main &
# polybar main &
polybar vol_bar &
# polybar time_bar_right &
# polybar right &
