#!/bin/sh

echo "Available: $( df -h | sed -n '/^[/]dev/p' | awk '{print $4}')"
