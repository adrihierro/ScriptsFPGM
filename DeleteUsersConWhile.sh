#!/bin/bash

function usage(){
    
    echo "INSTRUCCIONS: ./create_users USERNAME [USER_NAME ... ]"
    echo "Executar com a root"
    exit 1
}

if [ ${UID} -ne 0 ]
then
    usage
fi

#Determinar el numero de parametres 
NUMERO_DE_PARAMETRES=${#}


if [[ ${NUMERO_DE_PARAMETRES} -eq 0 ]]
then
    #errada necessitem al manco 1 parametre
    usage   
fi

while [[ ${#} -ge 1 ]]
do      
    USER_NAME=${1}
    userdel -r ${USER_NAME}&> /dev/null
    shift
done