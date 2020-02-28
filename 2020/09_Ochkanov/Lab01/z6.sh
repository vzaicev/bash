#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ]; then
echo "Задание"
echo "4. Вывести имя скрипта, который был запущен."
echo 
echo
fi
echo "Название файла: ${0##*/}"        
exit 0
