#!/bin/bash

while true 
do
	read -p "Enter UserName : " user_name
	if [ $user_name = "q" ]
	then
		break
	fi
	sudo adduser "$user_name"
	echo "$user_name is Created ! "

done

#TODO !