#!/bin/bash
read -p "introduexi X: " X

if [[ ${X} -lt 5 ]]
then
    echo "es menor que 5"
elif [[ ${X} -gt 5 ]]
then
    echo "es major que 5"
else
    echo "el numero es 5"
fi
