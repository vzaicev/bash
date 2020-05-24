#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "28. Создать скрипт, который обрабатывает список файлов, заданный в файле, и удаляет файлы согласно этому списку (использовать оператор for)" 
echo
echo
fi
for f in First.txt Second.txt Third.txt Fourth.txt
do
rm $f
done
echo "Все файлы удалены"
exit 0 
