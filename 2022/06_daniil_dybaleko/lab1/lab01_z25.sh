#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
       echo "Задание"
echo "25. Создать функцию в командной строке, выводящую только четные параметры, переданные в скрипт и запустить ее."
echo
echo
fi

fun(){
	for parameter in "$@"
	do
		if [ "$((parameter % 2))" -eq 0 ] && [ "$parameter" != "-task" ]; then
		echo "$parameter"
		fi
	done
}
fun "$@"
