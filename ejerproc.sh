#!/bin/bash

while [ "$op" != "6" ]
do
	echo "1) Crear un proceso con prioridad"
	echo "2) Ver procesos activos"
	echo "3) Guardar lista de procesos"
	echo "4) Matar un proceso"
	echo "5) Detener un proceso"
	echo "6) Salir"
	read -p "Ingrese una opcion" op
	case $op in
		1)
		read -p "Ingrese proceso" pro
		read -p "Ingrese prioridad" pri
		nice -n$pri $pro &
		;;
		2)
		top
		;;
		3)
		ps -ef > lista.txt 
		;;
		4)
		read -p "Ingrese el PID" pid
		kill -9 $pid
		;;
		5)
		read -p "Ingrese el PID" pid
		kill -19 $pid
		;;
		6)
		echo "Adios"
		;;
		*)
		echo "Opcion incorrecta"
		;;
	esac
done
