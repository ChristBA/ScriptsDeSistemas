#!/bin/bash
clear
arc=""
while [ -z $arc ] || [ ! -f $arc ]
do
	echo "Ingrese el nombre de un archivo"
	read arc
done
while [ "$opcion" != "0" ]
do
	echo "Ingrese una opcion"
	echo "1) Mostrar linea que comience con una letra"
	echo "2) Mostrar linea que termine con una letra"
	echo "3) Mostrar lineas que solo contengan números"
	echo "0) Salir"
	read opcion
	case $opcion in
		1)
		letra=""
		while [ ${#letra} -ne 1 ] ||  [ -z $(echo $letra | grep -i "[a-z]") ]
		do
			echo "Ingrese una letra"
			read letra
		done
		echo "Se mostrarán todos los resultados con la letra $letra"
		grep -i "^$letra" $arc
		echo "Fin"
		;;
		2)
		letra=""
		while [ ${#letra} -ne 1 ] ||  [ -z $(echo $letra | grep -i "[a-z]") ]
		do
			echo "Ingrese una letra"
			read letra
		done
		echo "Se mostrarán todos los resultados con la letra $letra"
		grep "$letra$" $arc
		echo "Fin"
		;;
		3)
		echo "Se mostrarán todos los resultados numéricos"
		grep "^[0-9]*$" $arc
		echo "Fin"
		;;
		0)
		echo "Bye bye"
		;;
		*)
		echo "Opcion incorrecta"
		;;
	esac
done
