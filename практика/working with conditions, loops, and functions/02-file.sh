#!/bin/bash
f=$1
if [ -e "$f" ]; then
    echo "существует"
else
    echo "не существует"
fi
if [ -d "$f" ]; then
    echo "директория"
else
    echo "не директория"
fi
if [ -r "$f" ]; then
    echo "есть право на чтение"
else
    echo "нет права на чтение"
fi
