#!/bin/bash
errors=0
for file in "$@"; do
    if [ -e "$file" ]; then
        echo "OK: $file"
    else
        echo "MISSING: $file" >&2
        errors=$((errors + 1))
    fi
done
if [ "$errors" -gt 0 ]; then
    exit 1
fi
exit 0
