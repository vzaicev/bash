#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Task"
	echo "10. Check whether the number is negative or positive."
	echo 
	echo
fi
	echo "Enter a number"
	declare num
	read num
if test $num -ge 0
then
	echo "Number is positive"
else
	echo "Number is negative"
fi
