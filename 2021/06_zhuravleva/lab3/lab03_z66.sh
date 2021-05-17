#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "66. Печатать только дубликаты строк"
echo
echo
fi
touch file
buf1="Большинство принципов программирования на BASH \nБольшинство принципов программирования на BASH \nодинаково хорошо применимы и в других командных оболочках, \n\nтаких как Korn Shell (ksh), от которой Bash позаимствовал некоторые особенности, \n[2] и C Shell и его производных.\n[2] и C Shell и его производных."
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
sed '$!N; s/^\(.*\)\n\1$/\1/; t; D' file 
rm file