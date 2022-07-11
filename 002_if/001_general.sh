#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

if <комманда>
then
<комманда>
fi

MULTILINE-COMMENT

# Если комманда "pwd" выполнилась успешно, то выведется текст - "OK"
# Тут мы перенаправили все потоки ввывода в "/dev/null", чтобы вывод комманды pwd не показывался
# на экран
echo "- Если комманда \"pwd\" выполнилась успешно, то выведется текст - \"OK\""

if pwd &> /dev/null
then
  echo "OK"
fi




<< 'MULTILINE-COMMENT'

if <команда>
then
<команды>
else
<команды>
fi

MULTILINE-COMMENT


echo ""
# Найдем определенного пользователя в файле "/etc/passwd"
echo "- Найдем определенного пользователя в файле \"/etc/passwd\""

USER_NAME="zabbix"

if grep $USER_NAME /etc/passwd &> /dev/null
then
  echo "User $USER_NAME exist in \"/etc/passwd\" file"
else
  echo "User $USER_NAME does not exist in \"/etc/passwd\" file"
fi
