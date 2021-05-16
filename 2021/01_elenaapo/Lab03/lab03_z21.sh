#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "20. Поиск и замена "Hi\bro" на "Yo\bro" (замена только первых 4рех совпадения в строке)"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

if [ $# -ne 4 ]; then 
  echo "Need at least one argument."
  exit
fi

cat $1 | sed 's/Hi\\bro/Yo\\bro/' file.txt

