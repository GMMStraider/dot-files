#!/bin/bash
activesink=$(pacmd list-sinks |awk '/* index:/{print $3}')

case "$1" in
        up)
              pactl -- set-sink-volume $activesink +5%
              ;;
        down)
              pactl -- set-sink-volume $activesink -5%
              ;;
        mute)
              pactl -- set-sink-mute $activesink toggle
              ;;
esac

pkill -RTMIN+1 i3blocks
