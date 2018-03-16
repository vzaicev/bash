#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "10. Проверить положительное или отрицательное число."
	echo 
	echo
fi
	echo "Enter one integer number"
	declare num
	read num
if test $num -ge 0
then
	echo "Number is positive"
else
	echo "Number is negative"
fi
	