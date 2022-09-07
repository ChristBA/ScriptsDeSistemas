#!/bin/bash

opc=0

while [ "$opc" != "5" ]
do
	echo "1) Sumar dos numeros"
	echo "2) Crear un archivo no existente"
	echo "3) Ver contenido de un directorio existente"
	echo "4) Borrar un directorio existente"
	echo "5) Salir"
	echo "Ingrese una opcion"
	read opc
	case $opc in
		1)
		echo "Ingrese un numero"
		read num1
		echo "Ingrese otro numero"
		read num2
		suma=$((num1+num2))
		echo "$suma"
		;;
		2)
		echo "Ingrese el nombre del archivo"
		read nombre
		if [ -f $nombre ]
		then
			echo "El archivo ya existe"
		else
			touch $nombre
		fi
		;;
		3)
		
		;;
		4)
		
		;;
		5)
		echo "Chau"
		;;
		*)
		echo "Opcion incorrecta"
		;;
	esac
done
