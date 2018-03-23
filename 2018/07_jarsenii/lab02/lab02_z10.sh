#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "10. Написать скрипт, который получает список файлов в текущей директории, копирует эти файлы в заданную как входной параметр директорию и меняет права"
echo "доступа 755 на скопированные файлы, если файл имеет расширение "*sh"."
echo
echo
else
touch file
ls | sort -u > file
readarray ARRAY < file
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file
mkdir -p $1
regex=".*.sh"
for ((a=0; a < ${#array[@]}; a++)) 
do 
cp ${array[$a]} $1
done
for ((a=0; a < ${#array[@]}; a++)) 
do 
if [[ ${array[$a]} =~ $regex ]]; then
chmod 755 $1/${array[$a]}
fi
done
rm file
echo "All created files and directorys will be deleted after 15 seconds!!!"
sleep 15
echo "File(directory) $1 was deleted"
rm -rf $1
fi