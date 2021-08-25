#!/bin/bash

#Get the temperature, wind, and precipitation
DATA=$(curl -Ss "http://wttr.in?O&T&Q" | cut -c 16- | head -5 | sed -n '2p;5p;s/\n/\t/;s/~F~Q//')
echo $DATA > weather.txt
