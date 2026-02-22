#!/bin/bash


say_by()
{

	echo "Its All Of Argu You Input $* "

	if [ $# = 1 ]
	then 
		echo "its second $1 function with one parameter"
	elif [ $# > 1 ]
	then 
		for p in $* 
		do
			echo $p
		done
	else
		echo "ITs Jus FUnction !"
	fi

}

say_by

