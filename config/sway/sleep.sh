#!/bin/sh
LOCKPID=$(pgrep -x gtklock)

set -e

if [ -z "$LOCKPID" ]
then
    # Prep lock screenshots
    ~/.config/gtklock/screenshot.sh
    ~/.config/gtklock/processing.sh &
    chayang -d 2
    ~/.config/sway/power.sh off
    wait
    ~/.config/sway/prelock.sh
    ~/.config/gtklock/lock.sh
else
    ~/.config/sway/power.sh off
fi
