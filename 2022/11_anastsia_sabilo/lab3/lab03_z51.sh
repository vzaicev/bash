#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "51. Печать строк, совпадающих с регулярными выражениями AAA, BBB и CCC " 
	echo "одновременно (в конкретной последовательности)"
	echo  
	echo
fi
	sed '/AAA.*BBB.*CCC/!d'  file.txt 
