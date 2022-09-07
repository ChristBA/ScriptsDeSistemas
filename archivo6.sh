## Crear un script que solicite dos numeros y muestre el 
## mayor de ellos
## Crear un script que solicite 3 numeros y muestre el mayor de 
## ellos
## Crear un script que reciba un numero entre 0 y 99 y muestre si
## el mismo es par o impar. En caso de recibir un numero fuera de 
## rango o no recibir ningun parametro debera mostrar un
## mensaje de error

#!/bin/bash

echo "Ingrese un numero"
read num1
echo "Ingrese otro numero"
read num2

if [ $num1 -gt $num2 ]
then
	echo "El mayor es $num1"
elif [ $num2 -gt $num1 ]
then
	echo "El mayor es $num2"
else
	echo "Son iguales"
fi

