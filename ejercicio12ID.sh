#!/bin/bash
acum=0
for i in {1..20}
do
	echo "Ingrese un numero"
	read num
	acum=$(($acum+$num))
done
prom=$(($acum/20))

echo "El promedio es $prom"
