#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "�������"
    echo "5. ������� ������ ����������� ��� ����� ���� ����������� ��� integer ���������� ��������� ���������� ��������"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

declare -i num=3
echo "$num"
num="String"
echo $num