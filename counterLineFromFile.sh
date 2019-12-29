#!/bin/bash

# script qui compte pour le fichier ($1) le nombre de ligne
# à éxecuter avec sh et un paramètre

if [ $# -eq 1 ]
then	
	nb_line=$(cat $1 | wc -l)
	nb_line+=" line(s) inside file: "$1
	echo '\n'$nb_line'\n'
	cat $1
else 
	echo "error: one parameter needed"	
fi