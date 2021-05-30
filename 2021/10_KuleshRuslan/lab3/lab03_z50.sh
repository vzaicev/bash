#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "50. Печать строк, совпадающих с регулярными выражениями AAA, BBB и CCC одновременно (в любой последовательности)"
echo
echo
fi
touch file
buf1="AAA BBB CCC \nAAA CCC BBB \nZIP AZA POP MEL \nAAA CCC HEL \nBBB CCC AAA"
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
sed '/AAA/!d; /BBB/!d; /CCC/!d' file
rm file