#!/bin/bash
test -f /etc/passwd
status=$?
test -f /etc/passwd && echo "Файл есть" || echo "Файла нет"
echo "$status"
