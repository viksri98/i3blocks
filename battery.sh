#!/bin/bash

#Color
RED="#FF0000"
ORANGE="#FF8000"
GREEN="#00FF00"

#Get data
[ -d /sys/class/power_supply/$1 ] || exit 0
CHARGE=$(cat /sys/class/power_supply/$1/capacity)
STATUS=$(cat /sys/class/power_supply/$1/status)

#Output
[ $STATUS = "Discharging" ] && EMOJI=🔋 || EMOJI=🔌
[ $CHARGE -lt 15 ] && printf "$EMOJI: $CHARGE\n\n$RED\n" && exit 0
[ $CHARGE -lt 25 ] && printf "$EMOJI: $CHARGE\n\n$ORANGE\n" && exit 0
printf "$EMOJI: $CHARGE\n\n$GREEN" && exit 0

