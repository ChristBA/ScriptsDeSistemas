#!/bin/bash

while [ "$opc" != 3 ]
do
echo "1) Ingresar servicio"
echo "2) Ver servicio"
echo "3) Salir"
read -p "Ingrese una opcion" opc
case $opc in
	1)
	read -p "Ingrese el nombre del servicio" ser
	read -p "Ingrese la descripcion" des
	read -p "Ingrese el costo" opc
	read -p "Ingrese el encargado" enc
	read -p "Ingrese el nombre del cliente" cli
	echo "$ser:$des:$opc:$enc:$cli" >> archivoservicio.txt
	;;
	2)
	echo "Estos son los servicios"
	cut -d":" -f1 archivoservicio.txt
	read -p "Ingrese el nombre del servicio" ser
	desc=$(grep "$ser"  archivoservicio.txt | cut -d":" -f2)
	cost=$(grep "$ser" archivoservicio.txt|cut -d":" -f3)
	enca=$(grep "$ser" archivoservicio.txt| cut -d":" -f4)
	clie=$(grep "$ser" archivoservicio.txt |cut -d":" -f5)
	echo "Nombre del servicio: $ser"
	echo "Descripcion: $desc"
	echo "Costo: $cost"
	echo "Encargado: $enca"
	echo "Cliente: $clie"
	;;
	3)
	echo "Chaucito"
	;; 
	*)
	echo "Opcion incorrecta"
	;;
esac
done
