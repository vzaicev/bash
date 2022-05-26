#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "10. Написать скрипт, который получает список файлов в текущей директории, копирует"
echo "эти файлы в заданную как входной параметр директорию и меняет права доступа 755"
echo "на скопированные файлы, если файл имеет расширение "*sh"."
echo
echo
shift
fi

if [ -n "$1" ]; then
touch file
ls | sort -u > file
readarray array < file
index=0
while read line; do
array[$index]="$line"
index=$(($index+1))
done < file
reg=".*\.+.*"
regex=".*\.sh"
mkdir -p $1
for ((a=0; a < ${#array[@]}; a++))
do
if [[ ${array[$a]} =~ $reg ]]; then
cp -r ${array[$a]} $1
fi
if [[ ${array[$a]} =~ $regex ]]; then
chmod 755 $1/${array[$a]}
fi
done
echo "Созданные файлы будут удалены через 15 секунд."
sleep 15
rm -Rfv $1
rm file
fi
