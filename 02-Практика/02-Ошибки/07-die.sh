#!/bin/bash
die() {
    echo "ОШИБКА: $*" >&2
    exit 1
}

if [ -z "${1:-}" ]; then
    die "файл не указан"
fi
if [ ! -e "$1" ]; then
    die "файл не найден: $1"
fi
if [ ! -r "$1" ]; then
    die "нет доступа к $1"
fi
echo "можно читать $1"
