#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "26. Создать скрипт выдающий предупреждение. В другом скрипте проверить"
	echo "существует ли созданный ранее скрипт и, если да, то запустить его"
	echo "на выполнение с параметрами."
	echo 
	echo
fi
FILE=$1
shift
if [ -f $FILE ]; then
	echo "File '$FILE' exists."
	echo
	sh ./$FILE $@
	echo
	echo "This script has just run another script"
else
	echo "File '$FILE' doesn't exist."
fi
