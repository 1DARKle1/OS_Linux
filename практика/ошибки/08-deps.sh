#!/bin/bash
missing=
for cmd in git curl jq; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        missing="$missing $cmd"
    fi
done
if [ -n "$missing" ]; then
    echo "Не установлены:$missing" >&2
    exit 127
fi
echo "Все зависимости на месте"
