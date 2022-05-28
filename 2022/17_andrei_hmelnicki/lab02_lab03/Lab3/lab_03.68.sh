#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "68. Удалить последнюю строку в файле"
    echo 
    echo 
    break
  fi
  ((i++))
done

if [ $# -ne 1 ]; then
  echo "Need at least one argument."
  exit
fi

cat $1 | sed '$d'

