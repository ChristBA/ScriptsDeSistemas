#!/bin/bash

read -p "Ingrese su edad" edad

if [ $edad -ge 18 ]
then
	echo "ES mayor"
else
	echo "Es menor"
fi
