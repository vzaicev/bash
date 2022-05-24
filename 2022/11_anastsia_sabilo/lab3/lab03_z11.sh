#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "11. Подсчет строк (эмуляция "wc -l") в файле содержащих выражение "begin""
	echo  
	echo
fi

	#sed -n '$='
	#sed = file.txt | sed -n '/begin/=' file.txt
	sed -n '/begin/=' file.txt | wc -l