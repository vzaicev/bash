#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "23. Поиск и замена "Hi\bro" на "Yo\bro" (замена предпоследнего совпадения)"
echo
echo
fi
cat $1 | sed -e 's/\(.*\)Hi\\bro\(.*Hi\\bro\)/\1Yo\\bro\2/'
exit 0