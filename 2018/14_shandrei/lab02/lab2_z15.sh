#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "15. Написать скрипт, который выводит информацию о процессоре (processor, model name, cpu MHz)"
echo
echo
fi
echo "processor: "
cat /proc/cpuinfo | grep 'processor' | wc -l #посчитать количество процессоров
cat /proc/cpuinfo | grep 'model name' | uniq #посмотреть модель
cat /proc/cpuinfo | grep 'cpu MHz' | uniq #посмотреть cpu MHz
exit 0