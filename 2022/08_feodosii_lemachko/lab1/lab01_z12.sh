#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
	echo "Задание"
	echo "12. Создать файл с пользователями и проверить существует ли введенны пользователь"
	echo
	echo
fi

echo "Введите количество пользователей"
read n
touch file
for((i=1; i <= n; i++))
do
	echo "Введите пользователя № $i"
	read user
	echo -e "$user" >>file
done
readarray arr < file
ind=0
while read line; do
	arr[$ind]="$line"
	ind=$(($ind+1))
done < file
echo "Введите пользователя, которого хотите найти"
read b
for((i=0; i < ${arr[$i]}; i++))
do
	if [[ ${arr[$i]} =~ "$b" ]]; then
		echo "${arr[$i]} найден"
		rm file
		exit 0
	else
		echo
	fi
done
echo "$b не найден"
rm file
