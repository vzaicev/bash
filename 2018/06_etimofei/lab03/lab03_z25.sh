#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "25. Замена \"Hi\bro\" на \"Yo\bro\" ТОЛЬКО для строк содержащих \"Black\""
	echo 
	echo
fi
	sed '/Black/s/Hi\\bro/Yo\\bro/g' file.txt