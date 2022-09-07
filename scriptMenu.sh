#!/bin/bash

while [ "$opcion" != "0" ]
do
	echo "1) Crear un archivo"
	echo "2) Agregar datos a un archivo"
	echo "3) Buscar un dato en un archivo"
	echo "4) Listar campo de un archivo"
	echo "0) Salir"
	echo "Ingrese una opcion"
	read opcion
	case $opcion in
		1)
		echo "Ingrese nombre del archivo"
		read archivo
		if [ -f $archivo ]
		then
			echo "El archivo ya existe"
		else
			touch $archivo
			echo "Archivo creado con exito"
		fi
		;;
		2)
		echo "Ingrese el nombre del archivo"
		read archivo
		echo "Ingrese nombre"
		read nombre
		echo "Ingrese apellido"
		read apellido
		echo "Ingrese CI"
		read ci
		echo "$nombre:$apellido:$ci" >> $archivo
		echo "Registro creado con éxito"
		;;
		3)
		echo "Ingrese nombre de archivo"
		read archivo
		if [ -f $archivo ]
		then
			echo "1) Buscar nombre"
			echo "2) Buscar apellido"
			echo "3) Buscar ci"
			echo "Ingrese una opcion"
			read opcion2
			case $opcion2 in
				1)
				echo "Ingrese nombre a buscar"
				read dato
				if [ -z $(cut -d":" -f1 $archivo | grep "$dato") ]
				then
					echo "No existe"
				else
					cut -d":" -f1 $archivo | grep "$dato"
				fi
				;;
				2)
				echo "Ingrese apellido a buscar"
				read dato
				cut -d":" -f2 $archivo | grep "$dato"
				;;
				3)
				echo "Ingrese CI a buscar"
				read dato
				cut -d":" -f3 $archivo | grep "$dato"
				;;
				*)
				echo "Opcion no existente"
				;;
			esac
		else
			echo "El archivo no existe"
		fi
		;;
		4)
		echo "En construcción"
		;;
		0)
		echo "Hasta la próxima"
		;;
		*)
		echo "Opcion incorrecta"
		;;
	esac
done
