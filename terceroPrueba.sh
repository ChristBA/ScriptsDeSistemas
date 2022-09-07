#!/bin/bash -x

read -p "Ingrese primer num: " num1
read -p "Ingrese segundo num: " num2
read -p "Ingrese tercer num: " num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
	echo "$num1 es el mayor"
elif [ $num2 -gt $num3 ] && [ $num2 -gt $num1 ]
then
	echo "$num2 es el mayor"
else
	echo "$num3 es el mayor"
fi
