#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

while <команда проверки условия>
do
<другие команды>
done

MULTILINE-COMMENT

# Перебор простых значений
echo "- Перебор простых значений"

NUMBER=5
while [ $NUMBER -gt 0 ]
do
  echo "Number is - $NUMBER"
  NUMBER=$(( $NUMBER - 1 ))
done
