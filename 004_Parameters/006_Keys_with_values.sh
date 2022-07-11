#!/usr/bin/bash

# Обработка ключей со значениями. Вот как нужно запустить скрипт: ./006_Keys_with_values.sh -a -b param1 -d
echo "- Обработка ключей со значениями"

while [ -n "$1" ]
do
  case "$1" in
    -a) echo "Found the -a option";;
    -b) PARAM="$2"
        echo "Found the -b option, with parameter value $PARAM"
        shift ;;
    -c) echo "Found the -c option";;
    --) shift
        break ;;
    *) echo "$1 is not an option";;
  esac
shift
done
