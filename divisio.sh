#!/bin/bash

#Script per fer una divisio i que el seu resultat sigui amb decimals 
A=${1}
B=${2}

#Scale serveix per especificar el numero de decimals que tendra la 
#divisio i bc es la eina el cual fa posible que la divisio doni decimals
SUM=$(echo "scale=2; $A / $B" | bc)
echo "${A} + ${B}= ${SUM}"
echo "El resultat de la divisio es ${SUM}"