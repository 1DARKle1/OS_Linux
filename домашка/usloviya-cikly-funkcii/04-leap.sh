#!/bin/bash
y=$1
if (( y % 400 == 0 )) || (( y % 4 == 0 && y % 100 != 0 )); then
    echo "високосный"
else
    echo "не високосный"
fi
