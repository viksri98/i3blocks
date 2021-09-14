#!/bin/sh

echo "💽: $( df -h $1 | awk '{print $4}' | tail -1)"
