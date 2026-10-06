#!/bin/bash
read -r -p "Введите строку: " text
echo "${text^^}"
echo "${text,,}"
echo "${#text}"
