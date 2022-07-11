#!/usr/bin/bash

# 1-й пример.
echo "- 1-й пример"

echo -n "Enter your name: "
read NAME
echo "Hello $NAME, welcome to my program."

echo ""
# 2-й пример.
echo "- 2-й пример"

read -p "Enter your name: " FIRST LAST
echo "Hello $FIRST $LAST, welcome to my program."


<< 'MULTILINE-COMMENT'

Если скрипт должен продолжать выполнение независимо от того, введёт пользователь какие-то данные или нет,
вызывая команду read можно воспользоваться ключом -t. А именно, параметр ключа задаёт время ожидания ввода в секундах

MULTILINE-COMMENT

echo ""
# 3-й пример.
echo "- 3-й пример"

if read -t 5 -p "Enter your name: " NAME
then
  echo "Hello $NAME, welcome to my program"
else
  echo "Sorry, too slow! "
fi



echo ""
# Ввод паролей
echo "- Ввод паролей"

read -s -p "Enter your password: " PASS
echo "Your password is: $PASS"


echo ""
# Чтение данных из файла
echo "- Чтение данных из файла"

COUNT=1
cat /etc/passwd | while read LINE
do
echo "Line $COUNT: $LINE"
COUNT=$(( $COUNT + 1 ))
done
