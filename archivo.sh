#!/bin/bash -x

read -p "Ingrese un nombre de archivo: " arc 

if [ -f $arc ]
then
	rm $arc
else
	echo "No existe el archivo"
fi
