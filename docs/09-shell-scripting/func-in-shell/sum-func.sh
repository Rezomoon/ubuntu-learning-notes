#!/bin/bash


sum()

{
	total=$(($1 + $2))
	return $total
}

sum 2 3
result=$?
echo $result
