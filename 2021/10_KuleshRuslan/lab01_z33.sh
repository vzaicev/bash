#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "33.Создать функцию, формирующую список файлов, доступных только на чтение в текущей директории,"
	echo "после передать результат выполнения функции в цикл, который выводит имена, пропуская нечетные."
	echo
	echo
fi
	touch list
	ls -l > list
	readarray ARRAY <list
	index=0
	while read line; do
		array[$index]="$line"
		index=$(($index+1))
	done < list
	index=0
	results=()
	for ((a=1; a < ${#array[@]}; a++))
	do
		if ! echo ${array[$a]} | head -c 10 | grep -q -s -F x && ! echo ${array[$a]} | head -c 10 | grep -q -s -F w;
		then 
			results[$index]=${array[$a]}
			index=$(($index+1))
			
		fi
	done
	for ((b=0; b < ${#results[@]}; b=b+2))
	do	
		echo ${results[$b]} | awk '{print $NF}'
	done