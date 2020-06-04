#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
	echo "Task"
	echo "11. Write a script that displays 10 messages "1 second passed in the first stream" with a frequency of 1 second, and 5 messages with a frequency of 2 seconds (use the sleep n command)."
	echo
	echo
fi
#Code
i=0;
while [ $i -lt 10 ] 
do
	sleep 1s
	echo "1 second passed in the first stream"
	i=$[ $i + 1 ]
done
i=0;
while [ $i -lt 5 ]
do
	sleep 2s
	echo "2 seconds passed in the second stream"
	i=$[ $i + 1 ]
done
