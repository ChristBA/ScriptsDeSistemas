#!/bin/bash

read -p "Ingrese su cedula: " ci
read -p "Ingrese su contraseña: " pass

consulta="select tipo from usuarios where ci=$ci and pass='$pass'"

existe=$(mysql -u root -pPass-123 empresa -e "$consulta")

if [ -z "$existe" ]
then
	echo "Usuario o contraseña incorrectos"
else
	echo "Login aceptado"
	echo $existe
fi

