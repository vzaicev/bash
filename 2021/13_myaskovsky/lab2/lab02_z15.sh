#!/bin/bash
if [ $argument == "-task" ];
then
    echo "15. Написать скрипт,"
	  echo "который выводит информацию о процессоре"
	  echo "(processor, model name, cpu MHz)"
	  exit
else
  echo "processor: "
  cat /proc/cpuinfo | grep 'processor' | wc -l #посчитать количество ядер
  cat /proc/cpuinfo | grep 'model name' | uniq #посмотреть модель
  cat /proc/cpuinfo | grep 'cpu MHz' | uniq #посмотреть cpu MHz
  exit 0
fi