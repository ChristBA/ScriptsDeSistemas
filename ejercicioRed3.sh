#Crear un script que muestre el siguiente menú repetitivo
# 1) Multiplicación de dos números
# 2) Par o impar
# 3) Salir
# En la opcion 1 deberá solicitar dos números y mostrar su 
# multiplicacion
# En la opcion 2 deberá solicitar un número y deberá mostrar si es
# par o impar
# La opcion 3 deberá mostrar un mensaje de salida y salir del 
# script
#!/bin/bash

echo "1) Multi dos num"
echo "2) Par o impar"
echo "3) Salir"

read -p "Ingrese una opcion: " opcion

case $opcion in
	1)
	read -p "Ingrese un numero" num1
	read -p "Ingrese otro numero" num2
	multi=$(($num1*$num2))
	echo "El resultado es $multi"
	;;
	2)
	read -p "Ingrese un numero" num
	resto=$(($num % 2))
	if [ $resto -eq 0 ]
	then
		echo "El numero es par"
	else
		echo "EL numero es impar"
	fi
	;;
	3)
	echo "Chau"
	;;
	*)
	echo "Opcion incorrecta"
	;;
esac













