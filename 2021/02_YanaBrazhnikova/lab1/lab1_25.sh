#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
       echo "Task"
echo "25. Create a function on the command line that dispays only even parameters passed to the script."
echo
echo
fi
#Code
func(){
	for parameter in "$@"
	do
		if [ "$((parameter % 2))" -eq 0 ] && [ "$parameter" != "-task" ]; then
		echo "$parameter"
		fi
	done
}
func "$@"
echo "Done"