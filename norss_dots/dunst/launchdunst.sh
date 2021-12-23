#!/bin/sh

#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respectively.

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

pidof dunst && killall dunst

dunst -lf  "${color0:-#ffffff}" \
      -lb  "${color1:-#eeeeee}" \
      -lfr "${color1:-#dddddd}" \
      -nf  "${color0:-#cccccc}" \
      -nb  "${color1:-#bbbbbb}" \
      -nfr "${color5:-#aaaaaa}" \
      -cf  "${color0:-#999999}" \
      -cb  "${color1:-#888888}" \
      -cfr "${color7:-#777777}" \
      > /dev/null 2>&1 &
