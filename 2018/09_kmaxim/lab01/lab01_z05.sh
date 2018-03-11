#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "«адание"
    echo "5. —оздать скрипт провер€ющий что будет если объ€вленной как integer переменной присвоить букевенное значение"
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