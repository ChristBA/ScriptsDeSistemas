#!/bin/bash 

pares=0
impares=0
cantPares=0
cantImpares=0

for i in {1..20}
do
	read -p "Ingrese un numero" num
	if [ $((num%2)) -eq 0 ]
	then
		cantPares=$((cantPares+1))
		pares=$((pares+num))
	else
		cantImpares=$((cantImpares+1))
		impares=$((impares+num))
	fi
done

if [ $cantPares -ne 0 ]
then
	promPares=$((pares/cantPares))
	echo "El promedio de los pares es $promPares"
else
	echo "No se ingresaron numeros pares"
fi

if [ $cantImpares -ne 0 ]
then
	promImpares=$((impares/cantImpares))
	echo "El promedio de los impares es $promImpares"
else
	echo "No se ingresaron numeros impares"
fi


