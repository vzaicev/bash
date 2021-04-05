#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "2. Написать функцию вычисления факториала заданного числа."
	echo  "Число передается в скрипт как параметр."
	echo
	exit
fi

function getFactorial {
  counter=$1
  answer=1
	while [ $counter -gt 0 ]
	do
		answer=$(( $answer * $counter ))
		counter=$(( $counter - 1 ))
	done
	echo $answer
}


echo $(getFactorial $1)
