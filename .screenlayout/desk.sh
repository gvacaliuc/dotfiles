#!/usr/bin/env bash

xrandr --output eDP-1 --mode 3840x2160
xrandr --output DP-2 --mode 1600x1200 --scale 2x2 --right-of eDP-1

# move odd monitors to the left, even to the right
i3_left_right_split eDP-1 DP-2

# disable touchscreen and touchpad
#xinput list | grep -e "Touchscreen\s\+id" | grep -oe "id=[0-9]\+" | cut -d= -f2 | xargs xinput disable
#xinput list | grep -e "Synaptics TouchPad\s\+id" | grep -oe "id=[0-9]\+" | cut -d= -f2 | xargs xinput disable
