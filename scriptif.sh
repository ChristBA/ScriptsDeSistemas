#!/bin/bash

echo "Ingrese un valor"
read valor

if [ -z $valor ]
then
	echo "No ingrese datos vacios"
else
	if [ $valor -gt 0 ]
	then
		echo "El valor es positivo"
	elif [ $valor -lt 0 ]
	then
		echo "El valor es negativo"
	else
		echo "El valor es neutro"
	fi
fi
