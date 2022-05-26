#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
echo "9.Проверить результат выполнения предыдущей команды."
echo " "
echo " "
fi
echo "Попробуйте вывести my echo"
echo "my echo"

if [ $? -ne 0 ]; then
	echo "Ошибка"
else
	echo "successful echo"
	fi  