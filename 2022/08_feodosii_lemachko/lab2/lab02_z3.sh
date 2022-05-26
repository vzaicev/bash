#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
	echo "Задание"
	echo "3. Создайте функцию, в которую передаётся текст, состоящий из более 20 слов."
	echo "Текст передаётся из файла. Функция обрабатывает текст и выводит каждое второе слово."
	echo
fi

function myf
{
touch file
str1="Наличие метрики позволяет определить в абстрактном множестве понятие предела и операцию предельного перехода. Понятие предела последовательности абстрактного множества опирается на понятие предела числовой последовательности."
str2=`echo -n $str1 | sed 's/ /\n/g'`
echo -e "$str2" >>file
echo
echo $str2
echo
echo
readarray ARRAY < file
i=0
while read line; do
	array[$i]="$line"
	i=$(($i+1))
done < file
for ((a=1; a < ${#array[@]}; a=a+2))
do
	echo ${array[$a]}
done
rm file
}
myf