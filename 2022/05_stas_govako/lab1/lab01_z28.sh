#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание."
echo "Создать скрипт, который обрабатывает список файлов, заданный в файле, и удаляет файлы согласно этому списку (использовать оператор for)"
echo
echo
fi
for((a=1;a<=3;a=a+1))
do
touch $a".txt"
echo  $a".txt"
done
xargs -a list.txt -d' ' rm

if [ $? -ne 0 ]; then
	echo "Ошибка"
else
echo "Файлы успешно удалены" 
fi
exit 0 