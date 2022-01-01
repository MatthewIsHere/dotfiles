#!/bin/bash
playerctl pause
swaylock --screenshots --clock --indicator-idle-visible \
        --indicator-radius 100 \
        --indicator-thickness 7 \
        --ring-color 2a2e38 \
        --key-hl-color 51afef \
        --text-color bbc2cf \
        --line-color 2a2e38 \
        --inside-color 242730 \
        --separator-color 00000000 \
        --fade-in 0.1 \
        --effect-scale 0.5 --effect-blur 7x3 --effect-scale 2 \
        --effect-vignette 0.5:0.5
