#!/bin/bash 

echo "Ingrese un numero"
read numero

if [ $numero -lt 0 ]
then
	echo "Es negativo"
else
	echo "No es negativo"
fi
