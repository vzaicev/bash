#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "17. Сравнить две числовые переменные и если первая больше,"
echo "то вывести сообщение об этом, используя команду [."
echo
echo

val1=6
if [ $val1 -gt 5 ]
then
	echo "The test value $val1 is greater than 5"
else
	echo "The test value $val1 is not greater than 5"
fi