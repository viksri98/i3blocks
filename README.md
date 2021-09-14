# VikSri's i3Blocks Scripts

## battery.sh
This script returns the battery level as a 2 digit number using BAT0 only. Does not display any battery percentage if no battery is connected.  
🔋 means that the computer is operating on battery power
🔌 means that the computer is charging

## weather.sh
Gets the temperature in Fahrenheit, including the real-feel. Colored based on my personal experience of weather. Emojis for weather type are handled directly by wttr.in

## net.sh
Gets the network and whether it is connected using nmcli

## storage.sh
Gets the storage left in the partition specified, by default the root (/) directory  
USAGE: `./storage.sh $DIRECTORY`

## config
The config file for i3blocks, look here for how to use each script.
