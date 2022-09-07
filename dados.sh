#!/bin/bash

if [ $1 -lt 1 ] || [ $1 -gt 6 ]
then
	echo "Numero incorrecto"
else
	caraop=$((7-$1))
	echo "La cara opuesta es $caraop"
fi
