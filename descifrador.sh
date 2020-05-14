#!/bin/bash
echo "hola chicos vamos a jugar"
read -p "dime el hash MD5 que quiere romper" clave
read -p "dime el diccionario que vamos a usar" diccionario
while  read linea
do 
hash=$(echo -n $linea | md5sum)

if [ "$clave" == "$hash" ];
then 
echo "esta es la clave que buscas $linea"
break
fi
done < $diccionario
