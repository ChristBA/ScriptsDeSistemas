#!/bin/bash

echo "Ingrese un año"
read anio

if [ $((anio % 4)) -eq 0 ] &&  [ $((anio % 100)) -ne 0 ] || [ $((anio % 400)) -eq 0 ]
then
	echo "Es bisiesto"
else
	echo "No es bisiesto"
fi
