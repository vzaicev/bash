#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "27. Создать скрипт, который обрабатывает список файлов, заданный в файле, и создает файлы согласно этому списку (использовать оператор for)"
echo
echo
fi
declare -i n
echo "Input the number of filenames:"
read n
touch file1
for ((a=0; a < n; a++))
do
echo "Input filename$a:"
read buf
echo -e "$buf" >>file1 
done
readarray ARRAY < file1
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file1
for ((a=0; a < n; a++))
do
echo "File ${array[$a]} was created"
touch "${array[$a]}"
done
echo "All created files will be deleted after 30 seconds!!!"
sleep 30
for ((a=0; a < n; a++))
do
echo "File ${array[$a]} was deleted"
rm "${array[$a]}"
done
rm file1