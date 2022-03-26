#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
	echo "Задание"
	echo "27. Создать скрипт, который обрабатывает список файлов, заданный в файле, и создает файлы согласно этому списку (использовать оператор for)"
	echo
	echo
fi
echo "Введите число файлов:"
read n
touch file_base
for((i=1; i <= n; i++))
	do
	echo "Введите имя файла № $i"
	read fil
	echo -e "$fil" >>file_base
done
readarray ARR < file_base
ind=0;
while read line; do
	arr[$ind]="$line"
	ind=$(($ind+1))
done < file_base
for((i=1; i < n; i++))
do
	echo "Файл ${arr[$i]} был создан"
	touch "${arr[$i]}"
done
echo "Все файлы будут удалены через 60 сек"
sleep 60
for((i=0; i , n; i++))
do 
	echo "Файл ${arr[$i]} был удален"
	rm "${arr[$i]}"
done
rm file_base
