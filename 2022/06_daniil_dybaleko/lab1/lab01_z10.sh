#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then 
	echo "Задание"
	echo "10. Проверить положительное или отрицательное число."
	echo
fi
	echo "Введите число"
	declare num
	read num
if test $num -ge 0
then 
	echo "Число положительное"
else 
	echo "Число отрицательное"
fi
