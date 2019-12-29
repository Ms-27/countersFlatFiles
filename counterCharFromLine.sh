#!/bin/bash

# script qui compte pour le fichier ($1) le nombre de carctères de la ligne ($2) 
# à éxecuter avec sh et deux paramètres
# (exemple:) commande "brut" pour la ligne 3 du fichier file.md : cat file.md | sed -n '3p' | wc -m 

if [ $# -eq 2 ]
then
	line_num=$2"p"	
	nb_char=$(cat $1 | sed -n $line_num | tr -d '\n' | wc -m)
	nb_char+=" charcaters on line "$2" of file: "$1
	echo '\n'$nb_char'\n'
	line=$(cat $1 | sed -n $line_num)
	echo "line "$2": "$line
else 
	echo "error: two parameters needed"	
fi