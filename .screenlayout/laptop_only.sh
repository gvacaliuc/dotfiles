#!/bin/sh

# set main display and turn off all others
xrandr --fb 2560x1440 \
    --output eDP1 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
    --output HDMI2 --off \
    --output HDMI1 --off \
    --output DP1 --off \
    --output VIRTUAL1 --off
xsetwacom --set $(xinput list | grep -e "Touchscreen\s\+id" | grep -oe "id=[0-9]\+" | cut -d= -f2-) MapToOutput eDP1
