#!/bin/bash
function usage(){
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    echo "l'usuari no és pot repetir"
    exit 1 #Indica que hi ha hagut un error 
}

#Script per crear un usari 
#Antes de tot comprovar si soc l'usuari root

if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "introdueix el nom complet: " COMMENTS
#Demanam el nom de l'usuari
read -p "introdueix el nom d'usuari: " USER_NAME
#Demanam el password 
read -p "Introdueix el password: " PASSWORD 


#creariem l'usuari
useradd -m -c "${COMMENTS}" ${USER_NAME} &> /dev/null
#control de la darrera comanda
if [[ ${?} -ne 0 ]]
then
    echo "errada creant l'usuari
    exit 1
fi

#canvi de password
echo "${USER_NAME}:${PASSWORD}" | chpasswd
#comprovam si el canvi de contraseña ha anat bé

if [[ ${?} -ne 0 ]]
then
    echo "errada Canviant
    exit 1
fi

#fer caducar el password
passwd -e ${USER_NAME}

exit 0
