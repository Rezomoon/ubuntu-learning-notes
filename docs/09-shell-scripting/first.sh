#!/bin/bash

echo "say hello to shello "
dir_name="reza_dir"

if [ -d $dir_name ]
then
	echo "Its Heree " $dir_name
else
	echo "Here Is Not " $dir_name
	mkdir $dir_name
fi
