#!/usr/bin/bash

# Пример простой функции
echo "- Пример простой функции"

function echo_f {
  echo "This is an example of using a function"
}
COUNT=1
while [ $COUNT -le 3 ]
do
  echo_f
  COUNT=$(( $COUNT + 1 ))
done


# Возвращение резуьтата
echo "Возвращение результата"

# Использование команды return
# Учтите, что максимальное число, которое может вернуть команда return — 255.
# Если функция должна возвращать большее число или строку, понадобится другой подход.

echo "- Использование команды return"

function double_f_1 {
  read -p "Enter a value: " VALUE
  DOUBLE=$(( $VALUE * 2 ))
  return $DOUBLE
}

double_f_1
echo "There is an anser -  $?"

# Запись вывода функции в переменную
echo "- Запись вывода функции в переменную"

function double_f_2 {
  read -p "Enter a value: " VALUE
  DOUBLE=$(( $VALUE * 2 ))
  echo $DOUBLE
}
RESULT=`double_f_2`
echo "There is an anser - $RESULT"
