#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

Глобальные переменные

Если вы объявили глобальную переменную в основном коде скрипта, к такой переменной можно обратиться из функции.



Локальные переменные

Переменные, которые объявляют и используют внутри функции, могут быть объявлены локальными.


MULTILINE-COMMENT


function double_f_2 {
  read -p "Enter a value: " VALUE
  local FACTOR=2
  DOUBLE=$(( $VALUE * $FACTOR ))
  echo $DOUBLE
}
RESULT=`double_f_2`
echo "There is an anser - $RESULT"
