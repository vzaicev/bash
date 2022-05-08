#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "24. Поиск и замена "Hi\bro" на "Yo\bro" (замена только последнего совпадения) "
echo
echo
fi
cat text.txt | sed -e 's/\(.*\)Hi\\bro/\1Yo\\bro/'

exit 0