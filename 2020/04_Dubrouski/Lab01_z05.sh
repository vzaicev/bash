#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "5. создать скрипт проверяющий что будет если объявленной как integer переменной присвоить буквенное значение"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

declare -i num=3
echo "$num"
num="String"
echo $num
