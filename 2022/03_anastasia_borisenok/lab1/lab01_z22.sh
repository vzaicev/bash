#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "22. Проверить является пользователь, запустивший скрипт, root-пользователем и,"
echo "если нет, то выдать сообщение и завершить скрипт."
echo
echo
fi
if [[ $EUID -ne 0 ]]; then

    echo "Пользователь, запустивший скрипт, не является root-пользователем."
    exit 1
fi
exit 0
