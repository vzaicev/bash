#!/bin/bash
for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "2. Написать функцию вычисления факториала заданного числа."
    echo  "Число передается в скрипт как параметр."
    continue
  fi
  set -- "$@" "$argument"
done

function getFactorial {
  counter=$1
  answer=1
	while [ $counter -gt 0 ]
	do
		answer=$(( $answer * $counter ))
		counter=$(( $counter - 1 ))
	done
	echo $answer
}

function isNumber {
  re='^[0-9]+$'
  if ! [[ $1 =~ $re ]];
  then
    echo "error: Not a number" >&2;
    return 1
  fi
  return 0
}

function main() {
  if isNumber $1; then
    echo $(getFactorial $1)
  else
    echo wrong input
  fi
}

main $1;
# max input is 59