#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "58. Печатать часть файла начиная от совпадения с регулярным выражением и до конца файла"
echo
echo
fi
touch file
buf1="Большинство принципов программирования на BASH \nодинаково хорошо применимы и в других командных оболочках, \n\nтаких как Korn Shell (ksh) \nbbbaasshh\n, от которой Bash позаимствовал некоторые особенности, \n[2] и C Shell и его производных."
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
sed -n '/bbbaasshh/,$p' file
rm file