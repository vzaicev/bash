#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "10. Написать скрипт, который получает список файлов в текущей директории,"
	echo "копирует эти файлы в заданную как входной параметр директорию и меняет"
	echo "права доступа 755 на скопированные файлы, если файл имеет расширение \"*sh\"."
	echo
	echo
fi
	else
	touch temp
	ls | sort -u > temp
	readarray ARRAY < temp
	index=0
	while read line; do 
		array[$index]="$line" 
		index=$(($index+1)) 
	done < temp
	mkdir -p $1
	regex=".*.sh"
	for ((a=0; a < ${#array[@]}; a++)) 
	do 
		cp ${array[$a]} $1
	done
	for ((a=0; a < ${#array[@]}; a++)) 
		do 
		if [[ ${array[$a]} =~ $regex ]]; then
		chmod 755 $1/${array[$a]}
	fi
	done
	rm temp
		echo "All created files and directories will be deleted after 15 seconds!!!"
	sleep 15
		echo "File(directory) $1 was deleted"
	rm -rf $1
