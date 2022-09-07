#!/bin/bash

read -p "Ing num" num
if [ -z $num ]
then
	echo "Vacio"
else
	echo "No"
fi
