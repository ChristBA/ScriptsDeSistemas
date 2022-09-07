#!/bin/bash

contador=1
for i in $(cat /etc/passwd)
do
	echo "Linea $contador $i"
	contador=$((contador+1))
done
