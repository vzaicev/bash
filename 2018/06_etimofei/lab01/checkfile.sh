#!/bin/bash
if [ -n "$1" ];
then
	echo Your parameters were $@
else
	echo There are no parameters
fi
