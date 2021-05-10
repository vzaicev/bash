#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "2. Написать функцию вычисления факториала заданного числа."
	echo  "Число передается в скрипт как параметр."
	echo 
	echo
fi
if [ "$1" == "-task" ] && [ -n "$2" ];
	then
		num=$2
	else
		num=$1
fi

	factorial=1
	while [ $num -gt 0 ]
	do
		factorial=$((factorial * $num))
		num=$((num - 1))
	done
	echo "Factorial is: " $factorial
	