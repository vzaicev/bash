#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
       echo "Task"
echo "18. Compare two string variables and if the first is larger, then display a message about this using the [."
echo
echo
fi
#Code
a=hockey
b=baseball
if [ $a \> $b ]; then 
	echo " $a is greater than $b "
fi
