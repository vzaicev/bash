#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "17. Сравнить две числовые переменные и если первая больше,"
echo "то вывести сообщение об этом, используя команду [."
echo
echo
fi
echo "введите a: "
read a
echo "введите b: "
read b 
if [ $a -gt $b ]
then
	echo "a больше b"
else
	echo "a меньше b"
fi
exit 0
