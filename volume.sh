#!/bin/bash

echo "🔉$( amixer | sed -n 's/[]].*//;s/.*[[]//;5p' )"
