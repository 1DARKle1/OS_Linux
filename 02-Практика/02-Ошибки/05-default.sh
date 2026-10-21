#!/bin/bash
greet() {
    if [ $# -eq 0 ]; then
        name=${1:-Гость}
    else
        name=${1:-Незнакомец}
    fi
    echo "Привет, $name"
}

require_name() {
    : "${1:?Имя обязательно}"
    echo "Имя: $1"
}

greet
greet ""
greet "Иван"
echo "--- без имени ---"
( require_name ) || true
echo "--- с именем ---"
require_name "Иван"
