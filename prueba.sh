#!/bin/bash


read -p "Ingrese nombre dir" dir

if [ -d $dir ]
then
	echo Creando
	mkdir $dir
else
	echo Ya existe
fi
