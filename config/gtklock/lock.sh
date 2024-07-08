#!/bin/sh
MAINSCREEN=$(swaymsg -t get_outputs | jq ".[0].name")

gtklock \
    -s ~/.config/gtklock/style.css \
    -t "%-I:%M" -D "%A, %B %-d" \
    -M $MAINSCREEN \
    --layout ~/.config/gtklock/custom.ui \
    -d
