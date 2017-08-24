#!/bin/bash
if [[ $(pidof "cmus") ]]; then
        command="cmus-remote"
else
        command="playerctl"
fi

case "$1" in
        start)
                if [[ $command == "cmus-remote" ]]; then
                        $command -u
                else
                        $command play-pause
                fi
                ;;
        stop)
                if [[ $command == "cmus-remote" ]]; then
                        $command -s
                else
                        $command stop
                fi
                ;;
        next)
                if [[ $command == "cmus-remote" ]]; then
                        $command -n
                else
                        $command next
                fi
                ;;
        prev)
                if [[ $command == "cmus-remote" ]]; then
                        $command -r
                else
                        $command previous
                fi
                ;;
esac

