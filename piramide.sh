#!/bin/bash
read -p "De cuantos pisos creamos la pirámide" Pisos
Piso=1
while [ $Piso -le $Pisos ]
   do
       Espacios=$(($Pisos - $Piso))
       Asteriscos=1
       Cadenaes=" "
       Cadenaas="*"
       while [ $Espacios -ge 1 ]
         do
            Cadenaes=" $Cadenaes"
            Espacios=$(($Espacios - 1))
         done
       while  [ $Asteriscos -lt $Piso ]
         do 
             Cadenaas="$Cadenaas *"
             Asteriscos=$(($Asteriscos +1))
         done  
       echo "$Cadenaes$Cadenaas"
       Piso=$(($Piso + 1))
done
