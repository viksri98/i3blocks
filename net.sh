#!/bin/bash

#Colors
RED="#FF0000"
GREEN="#00FF00"

text=$(nmcli device | sed -n '2p' | awk '{print "📶: "$4" "$3}')
echo $text
echo

[ $(awk '{print $3}' <<< $text) = "connected" ] && echo $GREEN && exit 0
echo $RED && exit 0
