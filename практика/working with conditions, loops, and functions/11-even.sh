#!/bin/bash
is_even() {
    if (( $1 % 2 == 0 )); then
        return 0
    else
        return 1
    fi
}

for ((i = 1; i <= 20; i++)); do
    if is_even "$i"; then
        echo "$i"
    fi
done
