#!/bin/bash

echo "5.Проверить, что будет, если объявленной как Integer переменной присвоить буквенное значение.."
echo " "
echo " "

#объявляет переменную типа integer
declare -i num=3
echo $num
#присваивание буквенного значения 
num="String"
echo $num  