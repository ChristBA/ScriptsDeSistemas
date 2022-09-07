#!/bin/bash

read -p "Ingrese un numero: " num1
read -p "Ingrese otro numero: " num2

let suma=$num1+$num2

suma2=$((num1+num2))

echo "Los valores son $suma y $suma2"
