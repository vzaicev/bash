#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "34. Добавить запятые к строке из чисел, изменяя "1234567" на "1,234,567""
echo
echo
fi
touch file
buf1="200124 \n1234 \n9999999"
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
sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' file
rm file