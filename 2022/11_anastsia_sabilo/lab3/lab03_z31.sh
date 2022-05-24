#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "31. Соединить каждую две (пару) строк бок о бок"
echo 
echo
fi
cat file.txt | sed '$!N;s/\n/ /'