#!/usr/bin/bash

# Подстановку можно сделать либо с помощью обратных кавычек "``"

HOME_DIR=`pwd`

# либо с помощью конструкции "$()"

USER_NAME=$( id -u -n )

echo "My username is \"$USER_NAME\". I'am in \"$HOME_DIR\" directory"
