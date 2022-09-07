#!/bin/bash

echo "Ingrese un nombre de archivo"
read arc
if [ -f $arc ]
then
	echo "Existe"
else
	echo "No existe"
fi
