#!/bin/bash

echo "9.Проверить результат выполнения предыдущей команды."
echo " "
echo " "

echo "Попробуйте создать "myfile.txt""
#создание файла
touch myfile.txt
#если код возврата не = 0, то выводит "ошибка"
if [ $? -ne 0 ]; then
	echo "Ошибка"
else
	echo ""myfile.txt" создан"
	fi  