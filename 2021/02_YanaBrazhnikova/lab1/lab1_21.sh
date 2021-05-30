  #!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "21. передать в скрипт два строковых параметра и сравнить их, использу¤ оператор if, если параметры пустые, то вывести предупреждение"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

if [ $# -lt "2" ]
then
  echo "Not enough arguments"
  exit
fi

if [[ "$1" < "$2" ]]
then
  echo "\"$1\" less than \"$2\""
fi