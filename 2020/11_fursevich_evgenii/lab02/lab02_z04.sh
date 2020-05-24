#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "3. Создайте функцию, в которую передается текст, состоящий из более 20 слов. Текст передается из файла. "
echo "Функция обрабатывает текст выводит каждое слово в которое начинается с заглавной буквы."
echo
echo
fi
function myf
{
touch file
buf1="Большинство принципов программирования на BASH одинаково хорошо применимы и в других командных оболочках, таких как Korn Shell (ksh), от которой Bash позаимствовал некоторые особенности, [2] и C Shell и его производных."
echo $buf1
buf2=`echo -n $buf1 | tr а-я А-Я; echo ${1:1};`
echo -e "$buf2" >>file 
echo
echo
echo $buf2
echo
echo
readarray ARRAY < file
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file
for ((a=1; a < ${#array[@]}; a+=2)) 
do 
echo ${array[$a]}
done
rm file
}
myf