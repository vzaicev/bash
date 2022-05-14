#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "73. Удалить ВСЕ пустые строки из файла"
	echo
	echo
fi
	sed -i '/^$/d' file.txt
