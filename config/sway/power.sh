# "off" or "on" (on by default)
STATE=$1
if [ -z "$STATE" ]; then
    STATE="on"
fi

if [ "$STATE" = "on" ]; then
    swaymsg output \* power on
elif [ "$STATE" = "off" ]; then
    swaymsg output \* power off
else
    echo 'Must be "off" | "on"'
fi
