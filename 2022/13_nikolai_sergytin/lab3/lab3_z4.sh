#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
    echo "Задание"
    echo "4. Удалить каждую пятую строку"
    echo ""
    echo ""

fi


cat textfile.txt | sed 'n;n;n;n;d;'