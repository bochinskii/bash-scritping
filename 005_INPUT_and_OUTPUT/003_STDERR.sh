#!/usr/bin/bash

# Подавление вывода. Файла STDIN.txtx не существует, поэтому должна вывестись ошибко, но т.к.
# мы ее перенаправили в /dev/null, ее видно на экране не будет.
echo "- Подавление вывода"

cat STDOUT.txt STDIN.txtx 2> /dev/null


# Перенаправить, и STDIN, и STDERR
echo "- Перенаправить, и STDIN, и STDERR"

cat ./STDOUT.txt ./STDIN.txtx &> /dev/null
