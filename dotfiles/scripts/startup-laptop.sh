#!/bin/sh

setxkbmap -layout za

export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

feh --bg-scale $HOME/wallpaper/wallpaper.png

nm-applet &
dunst &
picom &
