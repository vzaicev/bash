#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "�������"
    echo "29. ���������� ������� ������ ���������� � ������� ������ ��, ��� ���������� � ������� - (������������ �������� while)"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

i=0
while [ $i -lt $# ]
do
  if [ ${arr[$i]:0:1} = '-' ]
  then
    echo ${arr[$i]}
  fi
  ((i++))
done