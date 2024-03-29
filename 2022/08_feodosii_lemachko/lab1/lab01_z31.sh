#!/bin/bash
arguments_arr=( a b c d e f g )

for argument in "$@"
do
	shift
	if [ $argument == "-task" ]; then
		echo "Задание"
		echo "31. Обработать список параметров, скрипт должен различать 7 типов параметров и выводить сообщения о том, какой параметр был получен и какое значение передается после параметра."
		echo
		echo
		continue
	fi

	if [ $argument == "-h" ]; then
	       echo "Параметры для обработки: ${arguments_arr[@]}"	
	       echo 
	       echo
	       continue
	fi
	set -- "$@" "$argument"
done

process_argument()
{
for item in ${arguments_arr[@]}
do
	if [ $1 == "-$item" ]; then
		value=$2
		if [ "${value:0:1}" == "-" ]; then
			value=''
		fi
		echo "Аргумент $item обработан со значением: $value"
	fi
done
}

arguments=("$@")
last_index=`expr $# - 1`

for index in `seq 0 $last_index`
do
	process_argument ${arguments[$index]} ${arguments[`expr $index + 1`]}
done
exit 0
