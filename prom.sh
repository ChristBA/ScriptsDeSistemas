#!/bin/bash

suma=0
divisor=0
echo "Ingrese el primer numero"
read num1
echo "Ingrese el segundo numero"
read num2
echo "Ingrese el tercer numero"
read num3

if [ $num1 -le 0 ] && [ $num2 -le 0 ] && [ $num3 -le 0 ]
then
	echo "No se puede hacer el promedio"
else
	if [ $num1 -gt 0 ]
	then
		suma=$((num1+suma))
		divisor=$((divisor+1))
	fi
	if [ $num2 -gt 0 ]
	then
		suma=$((num2+suma))
		divisor=$((divisor+1))
	fi
	if [ $num3 -gt 0 ]
	then
		suma=$((num3+suma))
		divisor=$((divisor+1))
	fi
	prom=$((suma/divisor))
	echo "El promedio es $prom"
fi
