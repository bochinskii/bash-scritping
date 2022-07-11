#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

n1 -eq n2 Возвращает истинное значение, если n1 равно n2.
n1 -ge n2 Возвращает истинное значение, если n1больше или равно n2.
n1 -gt n2 Возвращает истинное значение, если n1 больше n2.
n1 -le n2 Возвращает истинное значение, если n1меньше или равно n2.
n1 -lt n2 Возвращает истинное значение, если n1 меньше n2.
n1 -ne n2 Возвращает истинное значение, если n1не равно n2.

MULTILINE-COMMENT

NUMBER_1=10
NUMBER_2=20

if [ $NUMBER_1 -lt $NUMBER_2 ]
then
  echo "The number - $NUMBER_1 less then number - $NUMBER_2"
else
  echo "The number - $NUMBER_1 not less then number - $NUMBER_2"
fi
