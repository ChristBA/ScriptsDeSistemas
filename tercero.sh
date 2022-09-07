#!/bin/bash

read -p "Ingrese primer num: " num1
read -p "Ingrese segundo num: " num2
read -p "Ingrese tercer num: " num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]
then
	echo "$num1 es el mayor"
fi
if [ $num2 -ge $num3 ] && [ $num2 -ge $num1 ]
then
	echo "$num2 es el mayor"
fi
if [ $num3 -ge $num1 ] && [ $num3 -ge $num2 ]
then
	echo "$num3 es el mayor"
fi
