#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ]; 
then
echo "Задание 18"
	echo " Сравнить две строковые переменные и если первая больше,"
	echo "то вывести сообщение об этом, используя команду ["
	echo 
	echo
fi
	echo "First string"
	read str1
	echo "Second string"
	read str2
if [ "$str1" \> "$str2" ]
then
	echo "First string more then second"
else
  echo "Second string more then first"
fi
exit 0