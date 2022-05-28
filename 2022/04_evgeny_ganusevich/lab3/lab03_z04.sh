#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "4. Удалить каждую пятую строку"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

if [ $# -ne 1 ]; then
  echo "Need at least one argument."
  exit
fi

cat $1 | sed 'n;n;n;n;d;'
