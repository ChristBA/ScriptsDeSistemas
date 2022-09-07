#!/bin/bash
mayor=0
menor=0
for contador in {1..4}
do
	read -p "Ingrese num: " num
	if [ $contador -eq 1 ]
	then
		mayor=$num
		menor=$num
	fi
	if  [ $num -gt $mayor ]
	then
		mayor=$num
	fi
	if [ $num -lt $menor ]
	then
		menor=$num
	fi
done

echo "El mayor es $mayor"
echo "El menor es $menor"
