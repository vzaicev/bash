#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
echo "14. Сравнить две строковые переменные и если первая больше, то вывести сообщение об этом, используя команду test."
echo 
echo
fi
echo "Введите первую переменную "
read str1
echo "Введите вторую переменную "
read str2
if test "$str1" \> "$str2"
then
	echo "Первая переменная больше, чем вторая."
fi

