#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

for <var> in <list>
do
<команды>
done

MULTILINE-COMMENT


# Перебор простых значений
echo "- Перебор простых значений"

for i in first second third fourth "the fifth"
do
  echo "cycle: $i"
done


echo ""
# Инициализация цикла списком, полученным из результатов работы команды
echo "- Инициализация цикла списком, полученным из результатов работы команды"

FILE="./test.txt"
for i in `cat $FILE`
do
  echo $i
done



<< 'MULTILINE-COMMENT'

Разделители полей (переменная - IFS)

По умолчанию оболочка bash считает разделителями полей следующие символы:

- Пробел
- Знак табуляции
- Знак перевода строки


MULTILINE-COMMENT

echo ""
# Перебор строк файла "/etc/passwd". Переменная COUNT тут только для того, чтобы
# не выводить весь файл passwd, а вывести только 5 строк.
echo "- Перебор строк файла \"/etc/passwd\""

FILE="/etc/passwd"
IFS=$'\n'

COUNT=5
for i in `cat $FILE`
do
  if [ $COUNT -ge 1 ]
  then
    echo $i
  fi
  COUNT=$(( $COUNT - 1 ))
done


echo ""
# Обход файлов, содержащихся в директории
echo "- Обход файлов, содержащихся в директории"

HOME_DIR="/home/denys"

for i in $HOME_DIR/*
do
  if [ -d "$i" ]
  then
    echo "\"$i\" is a directory"
  elif [ -f "$i" ]
  then
    echo "\"$i\" is a file"
  fi
done


echo ""
# Обработка вывода, выполняемого в цикле
echo "- Обработка вывода, выполняемого в цикле"

for (( i = 1; i < 10; i++ ))
do
  echo "Number is $i"
done > ./results.txt



echo ""
# Циклы "for" в стиле C
echo "- Цикл \"for\" в стиле C"

for (( i=1; i <= 5; i++ ))
do
  echo "Number is $i"
done


echo ""
# Вложенные циклы
echo "- Вложенные циклы"

for (( a = 1; a <= 3; a++ ))
do
  echo "External loop: $a"
  for (( b = 1; b <= 3; b++ ))
  do
    echo -e "\tInternal loop: $b"
  done
done
