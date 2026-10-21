#!/bin/bash
check_host() {
    if ping -c 1 -W 2 "$1" >/dev/null 2>&1; then
        echo "$1 доступен"
    else
        echo "$1 недоступен"
    fi
}

for h in localhost 8.8.8.8 1.1.1.1 example.com; do
    check_host "$h"
done
