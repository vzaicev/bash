#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "26. Замена "Hi\bro" на "Yo\bro" ИСКЛЮЧАЯ строки содержащие "Black""
echo
echo
fi
touch file
buf1="Hi bro rap \nHi bro Black rap"
echo $buf1
echo -e "$buf1" >>file
readarray ARRAY < file
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file
echo 
echo
for ((a=0; a < ${#array[@]}; a++)) 
do 
echo ${array[$a]}
done
echo 
echo
echo "Результат после применения sed:"
sed '/Black/!s/Hi bro/Yo bro/g'  file
rm file