#!/bin/bash
if [ $argument == "-task" ]; then
echo "Задание"
echo "15. Написать скрипт, который выводит информацию о процессоре (processor, model name, cpu MHz)"
echo
echo
fi


info="`cat /proc/cpuinfo`"

while read -r line; do
echo $line | grep 'processor'
echo $line | grep 'model name'
echo $line | grep 'cpu MHz'
echo $line | grep '^$'
done <<< "$info"

exit 0 