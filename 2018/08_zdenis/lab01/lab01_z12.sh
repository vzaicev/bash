#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "12. Создать файл с пользователями и проверить существует ли введенный пользователь."
echo
echo
fi
declare -i n
echo "Input the number of users"
read n
touch file
for ((a=0; a < n; a++))
do
echo "Input user$a:"
read buf
echo -e "$buf" >>file 
done
readarray ARRAY < file
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file
echo "Input the user you want to find:"
read b
for ((a=0; a < ${#array[@]}; a++)) 
do 
if  [[ ${array[$a]} =~ "$b" ]];
then
echo "${array[$a]} is found"
rm file
exit 0
else
echo
fi
done
echo "$b is not found"
rm file