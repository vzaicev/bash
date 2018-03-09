#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "8. Вывести номер последнего запущенного в фоне процесса."
echo
echo

whoami &
hostname &
echo "PID последнего процесса, запущенного в фоне: $!"