#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

Ключи командной строки обычно выглядят как буквы, перед которыми ставится тире.
Они служат для управления сценариями.

MULTILINE-COMMENT

# Рассмотрим пример передачи ключей в скрипт. Запустите скрипт вот так: ./003_Keys.sh –a –b –c –d
echo "- Рассмотрим пример передачи ключей в скрипт."

while [ -n "$1" ]
do
case "$1" in
  -a) echo "Found the -a option" ;;
  -b) echo "Found the -b option" ;;
  -c) echo "Found the -c option" ;;
  *) echo "$1 is not an option" ;;
esac
shift
done
