#!/bin/bash

echo "say hello to shello" 


read -p "Please Enter Your User Name : " user_name

echo "UserName is : $user_name "  


if [ $user_name = "admin" ]
then 
	echo "user is Admin ! "
elif [ $user_name = "reza" ]
then
	echo "User Is REZA !"
else 
	echo "User Is others ! "
fi
