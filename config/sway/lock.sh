#!/bin/sh
LOCKPID=$(pgrep -x gtklock)

if [ -z "$LOCKPID" ]
then
    # Prep lock screenshots
    ~/.config/gtklock/screenshot.sh
    ~/.config/gtklock/processing.sh &
    wait
    ~/.config/sway/prelock.sh
    ~/.config/gtklock/lock.sh
fi
