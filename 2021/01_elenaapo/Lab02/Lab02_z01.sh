#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "1. Проверить является ли заданное слово ключевым"
	echo "(использовать bash -c help)"
	echo 
	echo
fi
	touch file
	bash -c help > file
	readarray ARRAY < file
	index=0
	while read line; do 
		array[$index]="$line"
		index=$(($index+1)) 
	done < file
	for ((a=10; a < ${#array[@]}; a++)) 
	do
		echo ${array[$a]} | awk '{print $1;}'
	done
	flag = 0;
	for ((a=10; a < ${#array[@]}; a++))
	do
		if [[ $1 == ${array[$a]} ]];
		then
			echo YES
			flag = 1
		fi
	done
	
	if [[ flag == 0 ]];
	then
		echo NO
	fi
	