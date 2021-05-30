#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
	echo "13. Написать скрипт, который выводит 1000 сообщений с периодичностью 1 сек."
	echo "По нажатию на клавиатуре CTRL+Z, процесс должен вывести сообщение"
	echo "нет возможности запустить в фоновом режиме"
	echo "после команды fg процесс должен завершиться."
    break
  fi
  ((i++))
done

trap 'echo "Messages left: нет возможности запустить в фоновом режиме ";exit 2' SIGTERM SIGINT 



for number in $( seq 1000 )
do
  echo "$number"
  sleep 1s
done
