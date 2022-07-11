#!/usr/bin/bash

# Перенаправление ввода в скриптах

echo "- Перенаправление ввода в скриптах"

exec 0< ./STDIN.txt

while read line
do
  echo "$line"
done
