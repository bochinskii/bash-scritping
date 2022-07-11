#!/usr/bin/bash

# Команда break. Прекратим цикл на 6 интерации, т.е. выведем только 5-ть значений.
echo "- Команда break. Прекратим цикл на 6-ой интерации, т.е. выведем только 5-ть значений."

for i in 1 2 3 4 5 6 7 8 9 10
do
  if [ $i -eq 6 ]
  then
    break
  fi
  echo "Number is - $i"
done

# Тоже самое, только с циклом - "while"
echo "- Тоже самое, только с циклом - \"while\"."

NUMBER=1

while [ $NUMBER -le 10 ]
do
  if [ $NUMBER -gt 5 ]
  then
    break
  fi
  echo "Number is - $NUMBER"
  NUMBER=$(( $NUMBER + 1))
done


echo ""
# Команда continue. Пропустим инетрацию 5, 6, 7, 8
echo "- Команда continue. Пропустим инетрацию 5, 6, 7, 8"

for (( i = 1; i <= 10; i++ ))
do
  if [ $i -ge 5 ] && [ $i -le 8 ]
  then
    continue
  fi
  echo "Number is - $i"
done
