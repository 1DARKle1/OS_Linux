#!/bin/bash
read -r -p "Первое число: " a
read -r -p "Второе число: " b
sum=$((a + b))
diff=$((a - b))
prod=$((a * b))
quot=$((a / b))
rem=$((a % b))
echo "Сумма: $sum"
echo "Разность: $diff"
echo "Произведение: $prod"
echo "Частное: $quot"
echo "Остаток: $rem"
