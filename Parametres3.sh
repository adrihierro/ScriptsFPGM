#!/bin/bash

function usage(){
    echo "USAGE:you have to enter almost 2 parameters"
    echo "Parametres3.sh x1 x2 [x3...xn]"
    exit 1
}

num_param=${#}
echo "numero de parametres: ${num_param}"
if [[ ${num_param} -lt 2 ]]
then

    usage
fi 

SUMA=0
PRODUCTE=1
for I in ${@}
do
    SUMA=$((SUMA+I))
    PRODUCTE=$((PRODUCTE*I))
done
echo "LA SUMA VAL ${SUMA}"
echo "EL PRODUCTE VAL ${PRODUCTE}"
