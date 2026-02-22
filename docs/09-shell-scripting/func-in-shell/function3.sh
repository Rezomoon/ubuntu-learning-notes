#!/bin/bash

check_file()
{
	if [ -f  "$1"   ] 
	then
		echo  " $1 is File "
	else
		echo	"Is not File "
	fi
}

check_file checkFunc.txt
cehck_file noFile.txt
