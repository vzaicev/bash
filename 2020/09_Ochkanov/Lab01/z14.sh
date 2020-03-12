#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Task"
echo "14. Check two strings, if the first is greater, output a message accordingly, using test command"
echo 
echo 
fi
echo "Enter the first string: "
read str1
echo "Enter the second string: "
read str2
if test "$str1" \> "$str2"
then
  echo "The first string is greater than the second"
fi
