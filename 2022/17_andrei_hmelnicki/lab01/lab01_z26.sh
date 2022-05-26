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
	echo "Нет адреса файла"
	exit 0
fi
if [ -f $FILE ]; then
	echo "Файл '$FILE' существует."
	echo
	bash $FILE $@
	echo
	echo "Этот скрипт просто запускает другой скрипт"
else
	echo "Файл '$FILE' не существует"
fi
exit 0
