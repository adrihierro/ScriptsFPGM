#!/bin/bash 

if [ ${#} -lt 2 ]
then
    echo "Aquest script requereix de 2 arguments"
    exit 1
fi

echo "el primer parametre es: ${1}"

echo "el segon parametre es: ${2}"
