#!/bin/bash

if [ -n "$1" ] && [ "$1"  == "-task" ]; then
echo "Задание"
echo "Пример использвания цикла for с круглыми скобками"
echo 
echo
fi
#Код крипта выполняющий задание 
set -x
L=$1
for ((i=0;i<L;i++)) ; do 
    echo "$i print"
done

