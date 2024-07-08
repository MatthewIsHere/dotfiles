#!/bin/sh

STATE=$(swaymsg -t get_outputs)
NUM=$(echo $STATE | jq ". | length")

i=0
while [ $i -lt $NUM ];
do
    NAME=$(echo $STATE | jq ".[$i].name" | tr -d '"')
    magick "/tmp/$NAME.png" -blur 0x5 "/tmp/$NAME.png" &
    true $(( i=i+1 ))
done
wait
