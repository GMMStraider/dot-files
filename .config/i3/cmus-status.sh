#!/bin/bash
if [[ $(pidof "cmus") ]]; then
  cmus_status=$(cmus-remote -Q | head -n 1 | cut -d ' ' -f2-)
  if [ "$cmus_status" = "playing" ]; then
        artist=$(cmus-remote -Q | grep ' artist ' | cut -d ' ' -f3-)
        song=$(cmus-remote -Q | grep title | cut -d ' ' -f3-)
        echo " $artist - $song"
  else
        echo ""
  fi
elif [[ $(pidof "spotify") ]]; then
  spotify_status=$(playerctl status)
  if [[ "$spotify_status" = "Playing" ]]; then
        artist=$(playerctl metadata artist)
        song=$(playerctl metadata title)
        echo " $artist - $song"
  else
        echo ""
  fi
else
  echo ""
fi
