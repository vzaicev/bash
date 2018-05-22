#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "36. Добавить запятые к числу с десятичной частью и знаком минуса"
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

cat $1 | sed ':a;s/(^|[^0-9.])([0-9]+)([0-9]{3})/\1\2,\3/g;ta'

