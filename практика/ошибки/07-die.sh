#!/bin/bash
die() {
    echo "ОШИБКА: $*" >&2
    exit 1
}

if [ ! -r "$1" ]; then
    die "нет доступа к $1"
fi
echo "можно читать $1"
