#!/bin/bash

read -p "Ingrese un nombre de archivo: " nom

if [ -f $nom ]
then
	rm $nom
else
	echo "El archivo no existe"
fi
