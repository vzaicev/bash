#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ]; then
echo "Задание"
echo "5. Проверить, что будет, если объявленной как Integer переменной присвоить буквенное значение."
echo 
echo
fi

declare -i num=5
echo "$num"
num="String"
echo $num