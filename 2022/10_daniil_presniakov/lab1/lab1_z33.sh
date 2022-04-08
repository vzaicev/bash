#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "33.Создать функцию, формирующую список файлов, доступных только на чтение в текущей директории,"
	echo "после передать результат выполнения функции в цикл, который выводит имена, пропуская нечетные."
	echo
	echo
fi
touch spis
	ls -l > spis
	readarray ARRAY <spis
	index=0
while read line; do
		array[$index]="$line"
		index=$(($index+1))
	done < spis

ind2=0
	results=()

for ((a=1; a < $index; a++))
	do
		
		
			results[$ind2]=${array[$a]}
			ind2=$(($ind2+1))
			
		
	done

for ((b=0; b < ${#results[*]}; b=b+2))
	do	
		echo ${results[$b]} | awk '{print $NF}'
	done