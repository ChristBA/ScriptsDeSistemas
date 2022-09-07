#!/bin/bash

sum=0
for (( c=0; c<5; c++ ))
do
	echo "Ingrese un valor"
	read val
	echo $val
	sum=$((sum + val))
	echo $sum
done
prom=$(( $sum / 5 ))
echo $prom
