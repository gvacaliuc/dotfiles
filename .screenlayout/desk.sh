#!/usr/bin/env bash

# Set Frame Buffer Size
xrandr --fb 4040x2400

# Set HDMI2
xrandr --output HDMI1 --mode 1280x1024 --scale 1.75x1.75 --pos 0x304 --rotate normal
xrandr --output HDMI2 --mode 1600x1200 --scale 1.5x1.5 --pos 2240x0 --rotate left
xrandr --output eDP1 --off
i3_left_right_split HDMI1 HDMI2
