#!/bin/bash
for ((i = 1; i <= 3; i++)); do
    read -r -s -p "Пароль: " p
    echo
    if [ "$p" = "secret" ]; then
        echo "верно"
        exit 0
    fi
    echo "неверно"
done
echo "попытки закончились"
