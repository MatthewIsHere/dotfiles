#!/bin/sh

for o in DP-1 DP-2
do
    magick "/tmp/$o.png" -blur 0x5 "/tmp/$o.png" &
done
wait
