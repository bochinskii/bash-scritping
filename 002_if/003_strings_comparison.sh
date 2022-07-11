#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

str1 = str2 Проверяет строки на равенство, возвращает истину, если строки идентичны.
str1 != str2Возвращает истину, если строки не идентичны.
str1 < str2Возвращает истину, если str1меньше, чем str2.
str1 > str2 Возвращает истину, если str1больше, чем str2.
-n str1 Возвращает истину, если длина str1больше нуля.
-z str1Возвращает истину, если длина str1равна нулю.

MULTILINE-COMMENT

# Тут происходит сравнение переменной $USER_NAME с переменной окружения $USER
echo "- Тут происходит сравнение переменной \$USER_NAME с переменной окружения \$USER"

USER_NAME="denys"

if [ $USER_NAME = $USER ]
then
  echo "The user $USER_NAME is the current logged in system"
fi


<< 'MULTILINE-COMMENT'

if <команда1>
then
<команды>
elif <команда2>
then
<команды>
fi

MULTILINE-COMMENT


echo ""
# Можно сравнить какая строка длинее. Для этого используем конструкцию типа "\>", "\<"
echo "- Можно сравнить какая строка длинее"

STRING_1="Hello"
STRING_2="Hello, World!"

if [ "$STRING_1" \< "$STRING_2" ]
then
  echo "String: \"$STRING_1\" less then string: \"$STRING_2\""
elif [ "$STRING_1" == "$STRING_2" ]
then
  echo "String: \"$STRING_1\" equal to string: \"$STRING_2\""
else
  echo "String: \"$STRING_1\" grather then string: \"$STRING_2\""
fi
