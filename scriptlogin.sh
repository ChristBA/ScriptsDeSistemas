#!/bin/bash

while [ "$opcion" != "3" ]
do
	echo "1) Registrarse en el sistema"
	echo "2) Login"
	echo "3) Salir"
	read opcion
	case $opcion in
		1)
		echo "Ingrese su cédula"
		read ced
		if [ -z $ced ]
		then
			echo "El dato no puede estar vacio"
		else
			echo "Ingrese su nombre de usuario: "
			read nom
			if [ -z $nom ]
			then
				echo "El dato no puede estar vacio"
			else
				echo "Ingrese su contraseña"
				read con
				if [ -z $con ]
				then
					echo "El dato no puede estar vacio"
				else
					existe=$(grep -c "$nom" usu.txt)
					if [ $existe -eq 0 ]
					then
						echo "$ced:$nom:$con" >> usu.txt
					else
						echo "El usuario ya existe"
					fi
				fi
			fi
		fi
		;;
		2)
		echo "Ingrese su cedula"
		read ced
		echo "Ingrese su nombre de usuario"
		read nom
		echo "Ingrese su contraseña"
		read con
		existeusu=
		existepass=
		if [ $existeusu -eq 0 ]
		then
			echo "El usuario no existe"
		else
			if [ $existepass -eq 0 ]
			then
				echo "Contraseña incorrecta"
			else
				echo "Bienvenido"
			fi
		fi
		;;
		3)
		echo "Adios"
		;;
		*)
		echo "Opcion incorrecta"
		;;
	esac
done
