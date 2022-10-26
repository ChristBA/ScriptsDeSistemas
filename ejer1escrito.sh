#!/bin/bash

while [ "$opcion" != 4 ]
do
	echo "1) Restaurar BD"
	echo "2) Agregar excepcion de puerto en firewall"
	echo "3) Habilitar/deshabilitar un servicio"
	echo "4) Salir"
	read opcion
	case $opcion in
		1)
		read -p "Ingrese nombre de BD: " nombd
		read -p "Ingrese usuario de BD: " usu
		read -p "Ingrese contraseña: " pass
		read -p "Ingrese nombre de archivo sql: " arcsql
		read -p "Ingrese ruta: " ruta
		mysql -u $usu -p$pass $nombd < $ruta/$arcsql
		;;
		2)
		read -p "Ingrese puerto: " puerto
		firewall-cmd --permanent --add-port=$puerto/tcp
		firewall-cmd --reload
		;;
		3)
		read -p "Ingrese nombre de servicio" serv
		if [ $(systemctl is-enabled $serv) == "enabled" ]
		then
			systemctl disable $serv
		else
			systemctl enable $serv
		fi
		;;
		4)
		echo "Chau"
		;;
		*)
		echo "Opcion incorrecta"
		;;
	esac
done
