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
<<<<<<< HEAD
reg=".*\.+.*"
regex=".*\.sh"
mkdir -p $1
=======
regex=".*.sh"
mkdir $1
>>>>>>> 9f35fcc34a89197fab46f1aa4536937fffdcdc1f
for ((a=0; a < ${#array[@]}; a++)) 
do
if [[ ${array[$a]} =~ $reg ]]; then
cp -r ${array[$a]} $1
fi
done
for ((a=0; a < ${#array[@]}; a++)) 
do 
if [[ ${array[$a]} =~ $regex ]]; then
chmod 755 $1/${array[$a]}
fi
done
echo "All created files will be deleted after 15 seconds!!!"
sleep 15
for ((a=0; a < ${#array[@]}; a++)) 
do
rm $1/${array[$a]}
echo "File $1 was deleted"
done
rm file
fi
