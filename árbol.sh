#!/bin/bash
read -p "Dime la altura del arbol" Pisos
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
        Par=$(($Piso % 2))
     if [  $Par -eq 0  ]
        then 
            echo -e  "\e[31m$Cadenaes$Cadenaas"
             
     else
           echo -e  "\e[32m$Cadenaes$Cadenaas"
         
     fi
       Piso=$(($Piso + 1))
done
