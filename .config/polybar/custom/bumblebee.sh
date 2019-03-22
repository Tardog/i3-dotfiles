#!/bin/bash
check=$(optirun --status | grep "Discrete video card is off" -c)
icon=""

if [ "1" = $check ]; then
    # Discrete card off
    echo "%{F#444444}$icon off"
else
    # Discrete card active
    echo "%{F#FF410D}$icon on"
fi
