#Crear un script que reciba como parametro
#un nombre, un apellido y una cédula. A
#continuación, deberá guardarlos en un 
#archivo llamado "datos.txt". Si el archivo
#no existe, lo crean, y si existe, lo 
#sobreescriben

#!/bin/bash

echo $* > datos.txt
