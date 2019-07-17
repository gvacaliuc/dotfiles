#!/usr/bin/env bash

# Mouse Invisible Border Issues fixed with: https://bbs.archlinux.org/viewtopic.php?id=118999
xrandr --output HDMI-1 --mode 1920x1080 --scale 1.5x1.5 --right-of eDP-1
xrandr --output eDP-1 --mode 2560x1440
i3_left_right_split eDP-1 HDMI-1
