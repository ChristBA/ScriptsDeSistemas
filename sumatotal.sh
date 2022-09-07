#!/bin/bash

suma=0
for i in $*
do

suma=$(($i + $suma))

done

echo El valor de la suma es $suma
