#!/bin/bash

read -p "Ingrese un nombre de carpeta" carp
read -p "Ingrese un nombre de usuario" usu

if [ -d $carp ]
then
	echo "Carpeta ya existe"
else
	if [ -z $(cut -d":" -f1 /etc/passwd | grep $usu) ]
	then
		echo "No existe el usuario"
	else
		mkdir $carp
		chown -R $usu $carp
	fi
fi
