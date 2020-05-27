#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "10. Нумерация каждой строки в файле filename,"
echo "с выводом номера только для не пустых строк и каждой с номером кратным 3"
echo
echo
fi
touch file
buf1="Большинство принципов программирования на BASH \n\nодинаково хорошо применимы \nи в других командных оболочках, \nтаких как Korn Shell (ksh), от которой Bash позаимствовал \nнекоторые особенности, \n\n[2] и C Shell и его производных."
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
sed = file
echo
echo
echo "Результат после применения sed:"
sed '/./=' file | sed '/./N; s/\n/ /' | sed -n '3~3p' file
rm file