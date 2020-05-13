#!/bin/bash
read -p "Dime la semialtura de tu Rombo" Pisos
Piso=1
while [ $Piso -le $Pisos ]
   do
###Para calcular con cuantos Espacios iniciales empezamos resto al total de pisos que va a tener el inicial
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
###Empiezo en dos en este caso para que no se repita la línea central
Piso=2
while [ $Piso -le $Pisos ]
   do
       Asteriscos=$(($Pisos - $Piso))
       Espacios=1
       Cadenaes=" "
       Cadenaas="*"
       while [ $Asteriscos -ge 1 ]
         do
            Cadenaas="$Cadenaas *"
            Asteriscos=$(($Asteriscos - 1))
         done
       while  [ $Espacios -lt $Piso ]
         do 
             Cadenaes=" $Cadenaes"
             Espacios=$(($Espacios +1))
         done  
       echo "$Cadenaes$Cadenaas"
       Piso=$(($Piso + 1))
done

