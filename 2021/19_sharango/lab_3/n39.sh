#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "39. Печатать первые 30-100 линий файла"
echo
echo
fi
cat $1 | sed -n 30,100p
exit 0