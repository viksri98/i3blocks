#!/bin/bash

#Color
RED="#FF0000"
ORANGE="#FF8000"
GREEN="#00FF00"

#Get data
if [ ! -d /sys/class/power_supply/BAT0 ]; then exit 0; fi
BAT=$(cat /sys/class/power_supply/BAT0/charge_now)
FULL=$(cat /sys/class/power_supply/BAT0/charge_full)

#Calculations
CHARGE=`echo "($BAT / $FULL) * 100" | bc -l` 
CHARGE=$( sed -n 's/[.].*//p' <<< $CHARGE )

#Output
[ $CHARGE -lt 15 ] && printf "BATTERY: $CHARGE\n\n$RED\n" && exit 0
[ $CHARGE -lt 25 ] && printf "Battery: $CHARGE\n\n$ORANGE\n" && exit 0
printf "Battery: $CHARGE\n\n$GREEN\n" && exit 0
