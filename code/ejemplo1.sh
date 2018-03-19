#!/bin/bash

#Ejemplo de uso de tipos de variables
#Variable de entorno
echo "Directorio actual: "$PWD

#Variable local
EDAD=10
echo "Edad: "$EDAD

#Variable de sistema
echo "Nombre del script: "$0
echo "Numero de parametros: "$#
echo "Parametro 1: "$1
echo "Parametro 2: "$2
echo "Parametros: "$*

#Recorrido de parametros
for PARAM in $*
do
	echo $PARAM
done
