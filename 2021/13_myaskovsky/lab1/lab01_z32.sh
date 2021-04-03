#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];
then
	echo "Задание"
	echo "30. Создать функцию распознавания переданного параметра"
	echo "и использовать ее внутри функции,"
	echo "обрабатывающей параметры внутри скрипта"
	echo
fi

function isParamsPassed {
	if [ -n "$1" ] 
	then
		return  0
	
	else
		return 1
	fi
}

function isNumber {
	if [ $1 -eq $1 2> /dev/null ]; 
	then
		return 0
	else
		return 1
	fi
}

function printNumbers {
	for var in "$@"
	do
		if isNumber $var; then
			echo $var
		fi
	done
}

function main {
	if isParamsPassed $1; then 
		#echo passed params
		printNumbers "$@"
		
	else 
		echo no params
	fi
} 

main "$@"
