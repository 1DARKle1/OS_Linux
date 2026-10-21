#!/bin/bash
max_of_three() {
    m=$1
    if [ "$2" -gt "$m" ]; then
        m=$2
    fi
    if [ "$3" -gt "$m" ]; then
        m=$3
    fi
    echo "$m"
}

max_of_three "$1" "$2" "$3"
