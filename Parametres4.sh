#!/bin/bash

function usage(){
    
    echo"INSTRUCCIONS: ./create_users USERNAME [USER_NAME ... ]"
    exit 1
}

#mostra l'script executat
echo "Nom del script ${0}"

#El path i el file name del script 
echo "el PATH: $(dirname ${0}) el fitxer.sh seria $(basename ${0})"

#Determinar el numero de parametres 
NUMERO_DE_PARAMETRES=${#}
echo "Numero de parametres: ${NUMERO_DE_PARAMETRES}"

if [[ ${NUMERO_DE_PARAMETRES} -eq 0 ]]
then
    #errada necessitem al manco 1 parametre
    usage   
fi

TOTSPARAMETRES=${*}

echo "Tots els parametres: ${TOTSPARAMETRES}"

# #Desplaçar els parametres a l'esquerra
# shift
# #Tornar a mostrar els parametres
# TOTSPARAMETRES=${*}

# echo "Tots els parametres: ${TOTSPARAMETRES}"

#FOR es un bucle que s' executa per cada element de ${@}
for USER_NAME in ${@}
do
    #entrarem en aquest bloc,tantes vegades com parametres posam al scrip
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done
