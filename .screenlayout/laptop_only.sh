#!/usr/bin/env bash

# set main display and turn off all others
xrandr --fb 2560x1440 \
    --output eDP-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
    --output HDMI-2 --off \
    --output HDMI-1 --off \
    --output DP1 --off \
    --output VIRTUAL1 --off

# re-enable touchscreen and touchpad
touchctl disable
xinput list | grep -e "Synaptics TouchPad\s\+id" | grep -oe "id=[0-9]\+" | cut -d= -f2 | xargs xinput enable

#xsetwacom --set $(xinput list | grep -e "Touchscreen\s\+id" | grep -oe "id=[0-9]\+" | cut -d= -f2-) MapToOutput eDP-1
