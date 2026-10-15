#!/bin/bash
read -r -p "Введите слова через пробел: " -a words
n=1
for word in "${words[@]}"; do
    echo "$n. $word"
    n=$((n + 1))
done
