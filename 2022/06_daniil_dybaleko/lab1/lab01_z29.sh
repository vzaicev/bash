#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then 

    echo "Задание"
    echo "29. Обработать входную строку параметров и вывести только те, что начинаются с символа - (использовать оператор while)"
    echo ""
    echo ""
    break
fi
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]:0:1}" == '-' ] && [ "${arr[$i]:1:1}" != '-' ] && [ ${#arr[$i]} -ne "1" ]
  then
    echo ${arr[$i]}
  fi
  ((i++))
done