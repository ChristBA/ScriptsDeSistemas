#!/bin/bash

echo "Ingrese nombre de archivo"
read nom

if [ -f $nom ]
then
	echo "Existe"
else
	echo "No existe"
fi
