#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "10. Нумерация каждой строки в файле filename,"
echo "с выводом номера только для не пустых строк и каждой с номером кратным 3"
echo
echo
fi
touch file
buf1="Bash is the GNU Project's shell—the Bourne Again SHell  \n\his is an sh-compatible shell that incorporates useful features from the Korn shell (ksh) and the C shell (csh)\nIt is intended to conform to the IEEE POSIX P1003.2/ISO 9945.2 Shell and Tools standard.\nShell and Tools standard. It offers functional improvements over sh for both programming and interactive use. , \n\n[2] In addition, most sh scripts can be run by Bash without modification."
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