#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "�������"
    echo "21. �������� � ������ ��� ��������� ��������� � �������� ��, ��������� �������� if, ���� ��������� ������, �� ������� ��������������"
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
  echo "$1 less than $2"
fi
