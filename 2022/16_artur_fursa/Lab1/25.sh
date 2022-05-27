#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "25. Создать функцию в командной строке, выводящую только четные параметры, переданные в скрипт и запустить ее."
echo
echo
fi
fun() {
	for par in "$@"
	do
		if [ "$((par % 2))" -eq 0 ] && [ "$par" != "-task" ]; then
		echo "$par"
		fi
	done		
 }
fun "$@"
echo "Complete"