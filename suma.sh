#!/bin/bash
#control d'errades
#Si no ens passen 2 paràmetres donam un missatge de error i sortim del script 
NUM_PARAM=${#}
#echo "NUM_PARAM ${NUM_PARAM}"
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: has d'introduir dos parametres"
    exit 1
fi

A=${1}
B=${2}
SUM=$((${A}+${B}))
echo "${A} + ${B}= ${SUM}"
echo "El resultat de la operació aritmetica es ${SUM}"