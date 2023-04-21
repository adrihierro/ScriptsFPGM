#!/bin/bash

PARAMETRE0=${0}
#${0} ens indica el nom del executable
echo "el parametre 0 es ${0}"

#${1} es el primer parametre posicional
echo "el parametre 1 es ${1}"

#podeu escriure fins a 9 (verificar)
echo "el parametre 2 es ${2}"

parametre_sostingut=${#}
echo "el parametre sostingut ${parametre_sostingut} indica el numero de parametres"