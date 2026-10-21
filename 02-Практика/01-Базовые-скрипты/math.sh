#!/bin/bash
res=$(echo "scale=2; 10/3" | bc)
echo "$res"
pow=$((2 ** 10))
echo "$pow"
