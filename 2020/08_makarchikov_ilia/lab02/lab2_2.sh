#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
	echo "Task"
	echo "2. Write a function to calculate the factorial of a given number. The number is passed to the script as a parameter"
	echo 
	echo
fi
#Code
function factorial
{
	counter="$1"
        ans=1
	while [ $counter -gt 0 ]
	do
		ans=$(( $ans * $counter ))
		counter=$(( $counter - 1 ))	
	done
}
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] && [[ $2 =~ $re ]]  ; then
	factorial "$2"
	echo $ans
fi
if  [[ $1 =~ $re ]] ; then 
	factorial "$1"
	echo $ans
fi
