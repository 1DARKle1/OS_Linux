#!/bin/bash
n=$1
if [ "$n" -gt 0 ]; then
    echo "положительное"
elif [ "$n" -lt 0 ]; then
    echo "отрицательное"
else
    echo "ноль"
fi
