#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "�������"
    echo "14. �������� ��� ��������� ���������� � ���� ������ ������, �� ������� ��������� �� ����, ��������� ������� test"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

read str1
read str2
if test "$str1" \> "$str2"
then
  echo "First string is greater than second"
fi