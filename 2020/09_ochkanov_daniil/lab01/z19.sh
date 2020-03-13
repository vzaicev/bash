#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Task"
echo "19. Compare two integers, output yes or no message depending on whether integers are equal, using [] command."
echo
echo
echo
fi
echo "Enter number a"
read a
echo "Input number b"
read b
if [ "$a" -eq "$b" ]
then
echo
echo "Yes"
else
echo
echo "NO"
fi
