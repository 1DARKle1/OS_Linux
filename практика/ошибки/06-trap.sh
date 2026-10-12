#!/bin/bash
dir=$(mktemp -d)
cleaned=
cleanup() {
    if [ -n "$cleaned" ]; then
        return
    fi
    cleaned=1
    rm -rf "$dir"
    echo "Убрано"
}
trap cleanup EXIT INT TERM
echo "Временная папка: $dir"
sleep 30
