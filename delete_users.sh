#!/bin/bash

function usage(){
    
    echo "INSTRUCCIONS: ./delete_users USERNAME [USER_NAME ... ]"
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


#FOR es un bucle que s' executa per cada element de ${@}
for USER_NAME in ${@}
do
    #entrarem en aquest bloc,tantes vegades com parametres posam al scrip
    
    userdel -r ${USER_NAME}

    if [[ ${?} -ne 0 ]]
    then
        echo "Errada creant usuari"
        exit 1
    fi


done