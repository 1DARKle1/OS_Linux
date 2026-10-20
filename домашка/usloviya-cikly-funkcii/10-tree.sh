#!/bin/bash
read -r n
for ((i = 1; i <= n; i++)); do
    for ((s = 1; s <= n - i; s++)); do
        printf " "
    done
    for ((k = 1; k <= 2 * i - 1; k++)); do
        printf "*"
    done
    echo
done
