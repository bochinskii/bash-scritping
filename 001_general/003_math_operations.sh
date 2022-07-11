#!/usr/bin/bash

# Для выполнения математических операций в файле скрипта можно использовать конструкцию вида "$((a+b))"

NUMBER_1=10
NUMBER_2=15

SUMM=$(( $NUMBER_1 + $NUMBER_2 ))

echo "Summ is: $NUMBER_1 + $NUMBER_2 = $SUMM"

echo "Substraction is: $(( $NUMBER_2 - $NUMBER_1 ))"

echo "Multiplication is: $(( $NUMBER_1 * $NUMBER_2 ))"

echo "Division is: $(( $NUMBER_2 / $NUMBER_1 ))"
