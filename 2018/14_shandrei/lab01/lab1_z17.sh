#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "17. Сравнить две числовые переменные и если первая больше,"
echo "то вывести сообщение об этом, используя команду [."
echo
echo
fi
echo "Введите первую числовую переменную:"
read val1
echo "Введите вторую числовую переменную:"
read val2 
if [ $val1 -gt $val2 ]
then
	echo "The test value $val1 is greater than $val2"
else
	echo "The test value $val1 is not greater than $val2"
fi
exit 0