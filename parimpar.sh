#!/bin/bash -x

read -p "Ingrese un numero: " num
par=$((num%2))

if [ $par == 0 ]
then
	echo "Es par"
else
	echo "Es impar"
fi
