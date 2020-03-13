#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ]; then
echo "Task"
echo "4. Output a launched script name."
echo 
echo
fi
echo "File name: ${0##*/}"        
exit 0
