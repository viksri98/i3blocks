#!/bin/sh
printf "🐏:"
free -h | awk '{print $4}' | sed -n '2p'
