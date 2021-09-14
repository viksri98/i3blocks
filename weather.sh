#!/bin/bash

#Colors
RED="#FF0000"
ORANGE="#FF8000"
GREEN="#00FF00"
TEAL="#0080FF"
BLUE="0000FF"
WHITE="FFFFFF"

#Get the temperature data from the chosen file argument
DATA=$(curl -Ss wttr.in/?format="%t(%f)|%c\n" | sed 's/°F//g')
TEMP=$(awk -F '|' '{print $1}' <<< $DATA)
EMOJI=$(awk -F '|' '{print $2}' <<< $DATA)

#Outputs
echo $EMOJI:$TEMP°F
echo

TEMP=$(sed 's/+//;s/[(].*//' <<< $TEMP)
[ $TEMP -gt 93 ] && echo $RED && exit 0
[ $TEMP -gt 83 ] && echo $ORANGE && exit 0
[ $TEMP -gt 69 ] && echo $GREEN && exit 0
[ $TEMP -gt 55 ] && echo $TEAL && exit 0
[ $TEMP -gt 40 ] && echo $BLUE && exit 0
echo $WHITE && exit 0
