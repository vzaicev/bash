#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "1. Проверить является ли заданное слово ключевым (использовать bash -c help)"
echo
echo
shift
fi

if [ -n "$1" ]; then
touch file
bash -c help > file
readarray ARRAY < file
index=0
while read line; do
	array[$index]="$line"
	index=$(($index+1))
done < file
for ((a=10; a < ${#array[@]}; a++))
do
	array[$a]=`echo ${array[$a]} | awk '{print $1;}'`
done
while [ -n "$1" ]
do
i=1
for ((a=10; a < ${#array[@]}; a++))
do
if [ "$1" == "${array[$a]}" ]; then
	i=0
fi
done
if [ $i -eq 0 ]; then
	echo "Yes"
else
	echo "No"
fi
shift
done
rm file
fi
