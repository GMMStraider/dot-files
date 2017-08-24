#!/bin/bash
#eval $(/usr/bin/gnome-keyring-daemon -r -d --components=ssh)
#killall gnome-keyring-daemon
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets,ssh,pcks11)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID SSH_AUTH_SOCK

#export $(/usr/bin/gnome-keyring-daemon --start --components=ssh)
