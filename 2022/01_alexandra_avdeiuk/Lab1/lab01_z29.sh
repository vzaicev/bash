#!/bin/bash

i=0
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "29. Обработать входную строку параметроа и вывести только те, что начинаются с символа - (использовать оператор while)"
i=1
echo
echo
fi

if [ $# -ne 0 ]; then
if [ $i -eq 1 ]; then
shift
fi
while [ -n "$1" ]
do
if [[ "$1" == -* ]]
then
	echo "$1"
fi
shift
done
fi

