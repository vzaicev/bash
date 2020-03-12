#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Task"
echo "Create a script, which processes the file list, given in a file, and removes those files according to a given list (Use for cycle for this task)"
echo
echo
fi
for FILE in Delete.txt Remove.txt Erase.txt 
do
	rm $FILE
done
echo "Files successfully removed" 
exit 0 
