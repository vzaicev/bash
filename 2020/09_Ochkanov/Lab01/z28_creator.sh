#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo
echo "Task"
echo "Creates files for z28.sh to delete"
echo
echo
fi
touch Delete.txt
touch Remove.txt
touch Erase.txt
echo "Files created successfully"
exit 0 
