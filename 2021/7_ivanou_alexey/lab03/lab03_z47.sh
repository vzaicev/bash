#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "47. Печатать первые 30-100 линий файла"
echo
echo
fi
cat $1 | sed -n '/regexp/{g;1!p;};h'
exit 0