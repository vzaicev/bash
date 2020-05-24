#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "71. Удалить каждую вторую строку в файле"
echo
echo
fi
cat $1 | sed 'n;d'
exit 0