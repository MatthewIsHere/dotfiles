#!/bin/sh

# Kill old bar
killall -q waybar
# Wait for no waybar
while pgrep -x waybar > /dev/null;do sleep 1; done
#Start waybar
waybar
