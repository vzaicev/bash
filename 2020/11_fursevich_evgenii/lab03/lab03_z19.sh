#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "19. Поиск и замена "Hi\bro" на "Yo\bro" в каждой строке"
	echo 
	echo
fi
	sed sed 's/Hi\bro/Yo\bro/' file.txt