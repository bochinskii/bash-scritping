#!/usr/bin/bash

# Постоянное перенаправление вывода. Если нужно дописать, то - ">>"
echo "- Постоянное перенаправление вывода"

# Создаем свой поток (например - 3) и перенапрвляем его в STDOUT в терминал (это нужно для того, чтобы "echo" в line 15
# перевести поток на терминал)
exec 3>&1

exec 1> ./STDOUT.txt
echo "This is a test of redirecting all output"
echo "from a shell script to another file."
echo "without having to redirect every line"

echo "And this string goes to terminal" >&3

# Желательно закрыть собственный дескриптор после того как он уже не нужен
exec 3>&-
