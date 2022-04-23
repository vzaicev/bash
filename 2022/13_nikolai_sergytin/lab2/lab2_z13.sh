#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "13. Написать скрипт, который выводит 1000 сообщений с периодичностью 1 сек."
	echo "По нажатию на клавиатуре CTRL+C, процесс должен вывести сообщение"
	echo "нет возможности запустить в фоновом режиме"
	echo "после команды fg процесс должен завершиться."
fi


trap 'echo "Messages left: нет возможности запустить в фоновом режиме "; kill -TSTP $$' SIGINT 
trap 'echo "Процесс "$$" завершен"; exit 2' SIGCONT


echo "PID "$$
for number in $( seq 1000 )
do
  echo "$number"
  sleep 1s
done