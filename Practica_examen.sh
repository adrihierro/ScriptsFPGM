#!/bin/bash

NumeroGen=0

if [[ ${#} -eq 0 ]]
then
      NumeroGen=10
elif [[ ${#} -eq 1 ]]
then    
    NumeroGen=${1}
fi

URL="https://www.random.org/integers/?num=${NumeroGen}&min=1&max=100&col=1&base=10&format=plain&rnd=new"

suma=0
MINIM=101
MAXIM=0
for NUMERO in $(curl ${URL})
do
    echo "el valor del numero és ${NUMERO}"
    suma=$((suma+NUMERO))

    if [[ ${NUMERO} -lt ${MINIM} ]]
    then
        MINIM=${NUMERO}
    fi

    if [[ ${NUMERO} -gt ${MAXIM} ]]
    then
        MAXIM=${NUMERO}
    fi
done

echo "SUMA=${suma}"
echo "MINIM=${MINIM}"
echo "MAXIM=${MAXIM}"
Mitjana=$(echo "scale=2; ${suma}/${NumeroGen}" | bc)
echo "Mitjana=${Mitjana}"
