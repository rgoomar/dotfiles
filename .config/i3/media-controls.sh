#!/bin/bash

COMMAND=$1

# Execute pianobar commands
PIANOBAR_PID=`pidof pianobar`
if [[ $PIANOBAR_PID -gt 0 ]]; then
    PIANOBAR_CTL_LOCATION=/home/rgoomar/.config/pianobar/ctl
    case $COMMAND in
        play-pause)
            echo -n 'p' > $PIANOBAR_CTL_LOCATION
        ;;
        next)
            echo -n 'n' > $PIANOBAR_CTL_LOCATION
        ;;
        previous)
            echo -n 'n' > $PIANOBAR_CTL_LOCATION
        ;;
    esac
    exit 0
fi

# Pianobar isn't running, execute playerctl for rest
case $COMMAND in
    play-pause)
        playerctl play-pause
        ;;
    next)
        playerctl next
        ;;
    previous)
        playerctl previous
        ;;
esac
exit 0
