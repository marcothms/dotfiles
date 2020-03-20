#!/bin/bash

# Kill old polybars
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
laptop=$(xrandr --query | grep 'eDP-1')
hdmi1=$(xrandr --query | grep 'HDMI-1')

if [[ ${laptop} = *connected* ]]; then
    polybar laptop &
fi

if [[ ${hdmi1} = *connected* ]]; then
    polybar HDMI1 &
fi
