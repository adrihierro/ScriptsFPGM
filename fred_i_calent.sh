#!/bin/bash

adivina=$(( (RANDOM % 10) +1 ))
vides=3

while  [ $vides -ne 0 ]
do
    read -p "introdueix un numero: " introduit

    if [[ ${adivina} -eq ${introduit} ]]
    then
        echo "eureka"
        exit 0
    fi

    #ha fallat l'intent
    if [[ ${introduit} -lt ${adivina} ]]
    then
        echo "Fred"
    else
        echo "Calent"
    fi
    echo 
    vides=$((vides - 1))
done
echo "El numero que havies d'adivinar era $adivina"