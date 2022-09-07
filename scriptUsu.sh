#!/bin/bash

read -p "Ingrese nombre de usuario: " usu

resul=$(cut -f1 -d":" /etc/passwd | grep -c $usu)

if [ $resul != 0 ]
then
	echo "Existe"
else
	echo "No existe"
fi
