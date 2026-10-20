#!/bin/bash
ls "$0" >/dev/null
code=$?
echo "Имя скрипта: $0"
echo "PID: $$"
echo "Код возврата: $code"
