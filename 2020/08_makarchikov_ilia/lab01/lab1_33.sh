#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
       echo "Task"
echo "33. Create a function that forms a list of read-only files in the current directory, after passing the result of the function to a loop that displays the names, skipping the odd"
echo
echo
fi
#Code
func()
{
	for file in "$PWD"/*
	do
		if [ ! -w "$file" ] && [ -r "$file" ]; then 
		list+=( $file )
		fi
	done
}
func
for i in ${!list[@]}
do
	let "i += 1"
	#Нечетные имена это какие?
	echo ${list[$i]}
done
