#!/bin/bash

# Posar el nom d'usuari
read -p "Introdueix el nombre del nou usuari: " username
#añadim l'usuari creat 
useradd -m $username
#Demanam que posi una contraseña
echo "Introdueix una contraseña per el nou usuari:"
passwd $username
