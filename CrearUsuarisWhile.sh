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
echo "Numero de parametres: ${NUMERO_DE_PARAMETRES}"

if [[ ${NUMERO_DE_PARAMETRES} -eq 0 ]]
then
    #errada necessitem al manco 1 parametre
    usage   
fi


#FOR es un bucle que s' executa per cada element de ${@}
while [[ ${#} -ge 1 ]]
do      
    USER_NAME=${1}
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}" 
    shift
    
    useradd -m ${USER_NAME}

    echo "${USER_NAME}:${PASSWORD}" | chpasswd
done