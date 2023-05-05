#!/bin/bash
#Escribir un script que recorre el fitxero numeros.txt i
#muestre cada fila del fitxero por pantalla
numero_linies=0
SUMA=0
for linia in $(cat Numeros.txt)
do
    numero_linies=$((numero_linies+1))
    SUMA=$((SUMA+linia))
done
    echo "numero de linies: ${numero_linies}"
    echo "La suma val: ${SUMA}"
#Mitjana
MITJANA=$(echo "scale=2; ${SUMA}/${numero_linies}" | bc)
echo "la mitjana val ${MITJANA}"