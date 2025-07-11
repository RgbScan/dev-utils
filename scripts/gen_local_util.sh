#!/bin/bash

if [ -n "$1" ]; then
    name="$1"
    ext="${name##*.}"
    if [ "$ext" == "sh" ]; then
        clear_name="${name##*/}"
        clean="${clear_name%.sh}"
        cp "$name" "/usr/local/bin/$clean"
        chmod 755 "/usr/local/bin/$clean"
    else
        echo "❌ Расширение скрипта должно быть .sh, а не $ext"
    fi
else
    echo "❌  Не передан обязательный параметр: путь до скрипта"
fi


