#!/bin/bash

echo "🔉$( amixer sget Master | sed -n '/^ *Front Left/p' | sed -n 's/[]].*//;s/.*[[]//p' )"
