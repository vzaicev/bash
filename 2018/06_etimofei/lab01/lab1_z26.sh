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
if [ "$1" == "-task" ];
then
	FILE=$2
	shift
else
	FILE=$1
fi
shift
if [ -z $FILE ];
then
	echo "There is no file address"
	exit 0
fi
if [ -f $FILE ]; then
	echo "File '$FILE' exists."
	echo
	bash $FILE $@
	echo
	echo "This script has just run another script"
else
	echo "File '$FILE' doesn't exist."
fi
