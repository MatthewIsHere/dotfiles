#1/usr/bin/env bash

# Kill previous bar
killall -q waybar
# Wait for bar to be ded
while pgrep -x waybar > /dev/null;do sleep 1; done
#start it now
waybar
