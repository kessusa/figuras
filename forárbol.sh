#!/bin/bash
echo "Vamos a hacer una pirámide,dime de cuantos pisos la hacemos"
read Pisos
for((piso=1; piso<=Pisos; piso++))
do
   Par=$(($piso%2))
   for((espacios=1; espacios<=Pisos - piso; espacios++))
      do
         echo -n "  "
      done
   for((asteriscos=1; asteriscos<=2*piso - 1; asteriscos++))
      do 
         echo -n "* "
      done
        if [ $Par -eq 0 ]
           then
               echo -ne "\e[32m"
           else
               echo -ne "\e[31m"
        fi

      echo 
done
