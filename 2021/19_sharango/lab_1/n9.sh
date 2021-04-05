#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
       echo "Task"
echo "9. Check the result of the previous command."
echo
echo
fi
#Code
echo "Trying to create "myfile.txt""
touch myfile.txt
if [ $? -ne 0 ]; then
	echo "Error creating "myfile.txt""
else
	echo ""myfile.txt" was created successfully"
	fi  