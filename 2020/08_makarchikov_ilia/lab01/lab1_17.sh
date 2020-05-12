#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
       echo "Task"
echo "17. Compare two numerical variables and if the first is greater, then display a message about this using the ["
echo
echo
fi
#Code
declare -i a
declare -i b
echo -n "Enter variable a: "
read a
echo -n "Enter variable b: "
read b
if [ "$a" -gt "$b" ]; then 
echo "Variable \"a\" is greater then variable \"b\""
fi
