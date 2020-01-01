#!/bin/bash

if [ $# -eq 2 ]
then
	file=$1
	word=$2	
	nb_occur=$(grep -c $word $file)
	echo '\n'$word' appears '$nb_occur' time(s) in '$file'\n'
else 
	echo "error: one parameter needed"	
fi