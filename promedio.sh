#!/bin/bash
suma=0

for contador in {1..10}
do
	read -p "Ingrese un numero" num
	suma=$((suma+num))
done
prom=$((suma/10))
echo "El promedio es $prom"
