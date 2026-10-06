#!/bin/bash
kernel=$(uname -s)
free=$(df -hP / | awk 'NR==2 {print $4}')
files=$(ls /etc | wc -l)
echo "Ядро: $kernel"
echo "Свободно в /: $free"
echo "Файлов в /etc: $files"
