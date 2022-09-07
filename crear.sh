#!/bin/bash

read -p "Ingrese nombre de usuario" usu

if [ $(cut -d":" -f1 /etc/passwd | grep -c $usu) -ne 0 ]
then
	echo "$usu ya existe"
else
	read -p "Ingrese comentario" com
	read -p "Ingrese ruta de directorio" dire
	read -p "Ingrese shell" she

	useradd -c "$com" -d $dire -s $she $usu
fi
