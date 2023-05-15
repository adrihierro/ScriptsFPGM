#!/bin/bash

# 1.Mostra el misstage "El meu primer escript" per pantalla
echo "EXERCICI 1"
echo "El meu primer escript"

echo "---------------------------------------------------"

#2.Mostrar un missatge per pantalla amb la data actual i el format: Avui es dia 18/05/2021

echo "EXERCICI 2"
data=$(date +"%d/%m/%Y")
echo "avui es dia $data"

echo "---------------------------------------------------"

#3.Enseñar un missatge amb l'hora actual amb la comanda date
echo "EXERCICI 3"
data2=$(date +"%H:%M")

echo "Son les $data2"

echo "---------------------------------------------------"
#4. Mostrar el contingut del directori actual
echo "EXERCICI 4"
ls 
echo "---------------------------------------------------"

#5.Mostrar el contingut del directori temporal /tmp
echo "EXERCICI 5"
ls /tmp
echo "---------------------------------------------------"
# 6) Crea dos directoris nous a /tmp anomenats prova i copies
echo "EXERCICI 6"
mkdir /tmp/copies
mkdir /tmp/prova
echo "---------------------------------------------------"

# 7) Crea l'estructura de directoris 
#  /tmp/prova/ingressos
#  /tmp/prova/despeses
echo "EXERCICI 7"
mkdir /tmp/prova/ingressos
mkdir /tmp/prova/despeses
echo "---------------------------------------------------"

# 8) Modifica els permisos del directori d'ingressos per que tothom hi pugui accedir, llegir i escriure
echo "EXERCICI 8"
chmod ugo+xrw /tmp/prova/ingressos/
echo "---------------------------------------------------"

# 9) Modifica els permisos del directori despeses per que només el propietari hi tingui accés
echo "EXERCICI 9"
chmod go-xrw /tmp/prova/despeses
chmod u+xrw /tmp/prova/despeses
echo "---------------------------------------------------"

# 10)Fes una copia del directori /tmp/prova a /tmp/copia
echo "EXERCICI 10"
cp -r /tmp/prova /tmp/copies
echo "---------------------------------------------------"
#12) Mostra el contingut del directori /tmp/copia en forma d'arbre
 echo "EXERCICI 12"
tree /tmp/copies
echo "---------------------------------------------------"

#13) Esborra els directoris /tmp/copies i /tmp/prova i tot el seu contingut
 echo "EXERCICI 14"
rm -r /tmp/copies /tmp/prova
echo "---------------------------------------------------"
#14)Mostra l'espai lliure del disc dur. (Les unitat han de ser human-readable: 10GB, 123Mb, etc...)
 echo "EXERCICI 15"
df -h
echo "---------------------------------------------------"

#15) Mostra l'informació de la memoria del sistema.
 echo "EXERCICI 16"
free -h 
echo "---------------------------------------------------"

#16) Crea un nou script, al directori actual, anometat system_info.sh, que mostri informació del disc dur i de la memoria RAM usant les comandes anteriors.#
 echo "EXERCICI 17"
./system_info.sh

echo "---------------------------------------------------"

#17) Mostra el contingut de l'script anterior
 echo "EXERCICI 18"
cat system_info.sh
echo "---------------------------------------------------"

#18)Mostra tots els fitxers del directori actual que acabin amb la l'extensió .sh
 echo "EXERCICI 19"
ls *.sh
echo "---------------------------------------------------"

exit 0
