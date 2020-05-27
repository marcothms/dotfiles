killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for mon in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [[ ${mon} = *eDP-1* ]]; then
        polybar --reload laptop &
    else
        MONITOR=$mon polybar --reload external &
    fi
  done
else
    echo "No Bars loaded."
fi
