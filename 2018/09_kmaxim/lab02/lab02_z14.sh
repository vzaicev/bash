#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "14. Написать скрипт, который выводит столбиком только имена устройств доступных в системе."
    echo ""
    echo ""
    break
  fi
  ((i++))
done

df -h