#!/bin/bash


if [ -n "$1" ] && [ "$1"  == "-task" ];then
        echo "Task"
        echo "30. Сформировать список параметров, используя команду read и цикл until,"
        echo "затем вывести все введенные параметры в обратном порядке."
        echo
        echo
fi


declare -i numberOfElements
        echo "Enter number of parameters :"


read numberOfElements
        echo "Enter parameters :"

until [ $numberOfElements = 0 ]
do
read temp
array+=([$numberOfElements - 1]=$temp)
let "numberOfElements = $numberOfElements - 1"
done

        echo
        echo ${array[*]}


exit 0