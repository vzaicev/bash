#!/bin/bash

if [ -n $1 ] && [ "$1"  == "-task" ]; then
    echo "Задание"
    echo "6. Вставить строку с символом /* после каждой строки соответствующей регулярному выражению \"begin\""
    echo
    echo
fi




cat file.txt | sed -e 's/^begin$/begin\n\/\*/g'