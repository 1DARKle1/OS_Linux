#!/bin/bash
set -e
# false внутри if не прерывает скрипт: set -e не действует
# на команды, которые стоят в условии if, while или until.
if false; then
    echo "сюда не зайдёт"
fi
echo "if false скрипт не остановил"
false
echo "эта строка не выполнится"
