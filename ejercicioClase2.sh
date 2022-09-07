#!/bin/bash

while [ "$opc" != "6" ]
do
	read -p "	Ingrese una de las siguientes opciones
	1) Crear un enlace simbólico
	2) Ver los usuarios conectados
	3) Agregar un grupo a un usuario
	4) Ver la lista de usuarios del sistema
	5) Cambiar la contraseña de un usuario
	6) Salir
	" opc
	case $opc in
		1)
		read -p "Ingrese una ruta" ruta
		read -p "Ingrese el nombre del enlace" nom
		ln -s $ruta $nom
		;;
		2)
		who
		;;
		3)
		read -p "Ingrese usuario" usu
		if [ $(cut -d":" -f1 /etc/passwd | grep -c $usu) -eq 0 ]
		then
			echo "No existe el usuario"
		else
			read -p "Ingrese grupo" gru
			if [ $(cut -d":" -f1 /etc/group | grep -c $gru) -eq 0 ]
			then
				echo "No existe grupo"
			else
				sudo usermod -G $gru $usu
			fi
		fi
		;;
		4)
		cat /etc/passwd | cut -d":" -f1
		;;
		5)
		
		;;
		6)
		echo "Adios"
		;;
		*)
		echo "Opcion incorrecta"
		;;
	esac
done
