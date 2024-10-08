#!/bin/bash
setxkbmap -option ctrl:swapcaps
setxkbmap -option altwin:swap_alt_win
#
xrandr --output eDP-1 --auto --output HDMI-1 --auto  --left-of eDP-1
