#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
sleep 1;
xrandr --query > /tmp/xrandr-query
if type "xrandr"; then
    for m in $(xrandr --query | grep -w "connected" | grep -w "primary" | cut -d" " -f1); do
        echo "Primary screen found."
        echo "Primary screen found." >> /tmp/polybarlaunch
        export TRAY=right
        MONITOR=$m polybar --reload main &
    done
    for m in $(xrandr --query | grep -w "connected" | grep -v "primary" | cut -d" " -f1); do
        echo "Secondary screen found."
        echo "Secondary screen found." >> /tmp/polybarlaunch
        export TRAY= 
        MONITOR=$m polybar --reload main &
    done
else
    echo "Launching not using xrandr"
    export MONITOR=eDP1
    export TRAY=right
    polybar --reload main &
fi
