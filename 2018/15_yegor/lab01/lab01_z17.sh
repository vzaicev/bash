#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ]; 
then
echo "Задание 17"
	echo " Сравнить две числовые переменные и если первая больше,"
	echo "то вывести сообщение об этом, используя команду ["
	echo 
	echo
fi
	echo "First variable"
	read var1
	echo "Second variable"
	read var2
if [ "$var1" \> "$var2" ]
then
	echo "First variable more then second"
else
  echo "Second variable more then first"
fi
exit 0
	  