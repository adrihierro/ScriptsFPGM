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
for USER_NAME in ${@}
do
    #entrarem en aquest bloc,tantes vegades com parametres posam al scrip
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"

    useradd -m ${USER_NAME} 

    if [[ ${?} -ne 0 ]]
    then
        echo "Errada creant l'usuari"
        exit 1
    fi

    echo "${USER_NAME}:${PASSWORD}" | chpasswd

    passwd -e ${USER_NAME}

done