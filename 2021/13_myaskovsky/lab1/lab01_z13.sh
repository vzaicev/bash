#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then 
echo "Задание 13"
echo "Сравнить две числовые переменные и если первая больше, то вывести сообщение об этом, используя команду test"
fi

if [ "$1" == "test" ]; then
	firstNum=$2
	secondNum=$3

	if (( firstNum>secondNum ));
		then echo "$2 greater then $3";
	fi
fi

exit 0