#!/usr/bin/bash

# Аргументы функции
# аргументы передаются так же как скрипту.
echo "- Аргументы функции"

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

RESULT=`sum_f 10 2`
echo "Sum: $RESULT"
