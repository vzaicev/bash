#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "16. Написать скрипт, который выводит только информацию о размере свободной и общей оперативной памяти в системе."
echo
echo
fi
cat /proc/meminfo | grep 'MemTotal' | uniq #посмотреть размер свободной памяти
cat /proc/meminfo | grep 'MemFree' | uniq #посмотреть размер общей памяти
exit 0