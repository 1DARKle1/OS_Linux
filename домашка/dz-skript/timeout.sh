#!/bin/bash
if read -r -t 5 -p "Ввод (5 секунд): " ans; then
    echo "$ans"
else
    echo
    echo "Время вышло"
fi
