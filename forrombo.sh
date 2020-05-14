#!/bin/bash
echo "Dime la semialtura del rombo que vamos a dibujar"
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
for((piso=Pisos -1 ; piso>=1; piso--))
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





