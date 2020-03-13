#!/bin/bash

# Kill old polybars
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
laptop=$(xrandr --query | grep 'eDP-1')

if [[ ${laptop} = *connected* ]]; then
    polybar laptop &
fi
