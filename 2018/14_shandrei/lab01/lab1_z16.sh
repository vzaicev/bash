#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "16. Сравнить две строковые переменные и вывести сообщение yes или no,"
echo "используя команду test."
echo
echo
fi
echo "Введите первую строковую переменную:"
read s1
echo "Введите первую строковую переменную:"
read s2
#s1="hill"
#s2="hi"
echo "Результат:"
if test $s1 = $s2 
then
	echo "yes"
else
	echo "no"
fi