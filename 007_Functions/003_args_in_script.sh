#!/usr/bin/bash

# Если в функции планируется использовать параметры, переданные скрипту при вызове
# Запускаем: ./003_args_in_script.sh 5 6
echo "- Передадим функции аргументы из скрипта"

# Тут $1 $2 - это аргументы функции

function sum_f {
  if [ $# -eq 0 ] || [ $# -gt 2 ]
  then
    echo -1
  elif [ $# -eq 1 ]
  then
    SUM=$(( $1 + $1 ))
    echo $SUM
  else
    SUM=$(( $1 + $2 ))
    echo $SUM
  fi
}

# Тут $1 $2 - это аргументы переданные скрипту

if [ $# -eq 2 ]
then
  RESULT=`sum_f $1 $2`
  echo "The result is $RESULT"
else
  echo "Where is arg1 and arg2"
fi
