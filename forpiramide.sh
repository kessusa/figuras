#!/bin/bash
echo "Vamos a hacer una pirámide,dime de cuantos pisos la hacemos"
read Pisos
for((piso=1; piso<=Pisos; piso++))
do
  for((espacios=1; espacios<=Pisos - piso; espacios++))
  do
    echo -n "  "
  done
  for((asteriscos=1; asteriscos<=2*piso - 1; asteriscos++))
  do
    echo -n "* "
  done
  echo
done
