#Crear un script que solicite 50 números y muestre el promedio de
# ellos

#!/bin/bash

sumador=0

for (( i=1; i<=5; i++ ))
do
	echo "Ingrese un numero"
	read numero
	sumador=$(($sumador+$numero))
done
promedio=$(($sumador / 5))
echo "El promedio es: $promedio"
