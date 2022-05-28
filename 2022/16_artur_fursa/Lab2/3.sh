#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "3. Создайте функцию, в которую передается текст, состоящий из более 20 слов."
echo "Текст передается из файла. Функция обрабатывает текст выводит каждое второе слово."
echo
echo
fi
function myf
{
touch file
buf1="Название BASH это аббревиатура и игра слов от, ставшего уже классикой. В последние годы BASH достиг такой популярности, что стал стандартной командной оболочкой de facto для многих разновидностей UNIX."
echo $buf1
buf2=`echo -n $buf1 | sed 's/ /\n/g'`
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