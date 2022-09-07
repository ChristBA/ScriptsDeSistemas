#!/bin/bash

read -p "Ingrese el nombre de un archivo" arc
read -p "INgrese octal" oct
chmod $oct $arc

read -p "Ingrese una opcion" opc

bash $opc.sh

