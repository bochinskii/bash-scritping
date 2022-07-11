#!/usr/bin/bash

<< 'MULTILINE-COMMENT'

Часто при написании bash-скриптов возникает ситуация, когда надо использовать и параметры командной строки, и ключи.
Стандартный способ это сделать заключается в применении специальной последовательности символов, которая сообщает скрипту о том,
когда заканчиваются ключи и начинаются обычные параметры.

Эта последовательность — двойное тире (--). Оболочка использует её для указания позиции,
на которой заканчивается список ключей. После того, как скрипт обнаружит признак окончания ключей,
то, что осталось, можно, не опасаясь ошибок, обрабатывать как параметры, а не как ключи.

MULTILINE-COMMENT

echo ""
# Как различать ключи и параметры. Вот так нужно запускать скрипт:  ./005_Keys_and_Parameters.sh -a -b -c -- param1 param2 param3
echo "- Как различать ключи и параметры"

while [ -n "$1" ]
do
  case "$1" in
    -a) echo "Found the -a option" ;;
    -b) echo "Found the -b option";;
    -c) echo "Found the -c option" ;;
    --) shift
        break ;;
    *) echo "$1 is not an option";;
  esac
shift
done

COUNT=1
for PARAM in $@
do
  echo "Parameter $COUNT - $PARAM"
  COUNT=$(( $COUNT + 1 ))
done