#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "52. Печать строк, совпадающих с любым регулярным выражением AAA или BBB, или CCC"
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

cat $1 | sed -e '/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d