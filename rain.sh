#!/bin/bash

#Colors
BLUE="#0000FF"
TEAL="#0080FF"
WHITE="#FFFFFF"

#Get rain amount
RAIN=$(awk '{print $3 " " $4}' $1)
echo "Rain: $RAIN"
echo

#calculate color
RAIN=$(sed 's/ .*//' <<< $RAIN)
[ $( echo "$RAIN > 0.8" | bc -l ) -eq 1 ] && echo $BLUE && exit 0
[ $( echo "$RAIN > 0.2" | bc -l ) -eq 1 ] && echo $TEAL && exit 0
echo $WHITE && exit 0
