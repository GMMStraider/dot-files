#!/bin/bash
connectedOutputs=$(xrandr | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
activeOutput=$(xrandr | grep -E " connected (primary )?[1-9]+" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

multiMonitor=("DP-1" "DP-2")

if [ "$activeOutput" == "LVDS-0" ]; then
  echo "Laptop screen active."
elif [ "${activeOutput[*]}" == "${multiMonitor[*]}" ]; then
  echo "Multimonitor attached."
fi


echo $connectedOutputs
echo $activeOutput
