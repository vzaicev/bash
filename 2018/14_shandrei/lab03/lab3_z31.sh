#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "31. Соединить каждую две (пару) строк бок о бок"
echo
echo
fi
cat $1 | sed '$!N;s/\n/ /'
exit 0