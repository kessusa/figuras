
#!/bin/bash
#CREADOR ÁLVARO SÁNCHEZ AMBITE
#FECHA 13/01/2020
TMPFCMD="/tmp/cmd.tmp"
condicion=0
while [ $condicion = 0 ]; do
dialog --title 'Menú' --menu 'Elija una opción:' 0 0 0 \
1 'Número de usuarios' \
2 'Número de grupos' \
3 'Usuarios que tienen bash' \
4 'Usuarios que tienen contraseña' \
5 'Salir' 2> $TMPFCMD
opcion=$(cat $TMPFCMD)

if [ "$?" -eq "0" ]; then

 case $opcion in
		"1")
	        dialog --title "hay estos usuarios en el equipo" --msgbox "$(cat /etc/passwd | cut -d ":" -f 1 | wc -l)" 0 0
		dialog --title "Usuarios" --yesno "¿quieres saber cuantos usuarios tenemos?" 0 0
		response=$?
                case $response in
		0)dialog --title "Los usuarios son" --msgbox "$(cat /etc/passwd | cut -d ":" -f 1))" 0 0;;
		1)dialog --title "usuarios" --msgbox "perfecto otra vez será" 0 0 ;;
		esac
                ;;
                "2")
                dialog --title "numero de grupos" --msgbox "$(cat /etc/group | cut -d ":" -f 1 | wc -l)" 0 0 
                dialog --title "nombre grupos" --yesno "¿quieres saber cuantos grupos tenemos?" 0 0
                response=$?
                case $response in
                0)dialog --title "nombres grupos" --msgbox "$(cat /etc/group | cut -d ":" -f 1))" 0 0;;
                1)dialog --title "grupos" --msgbox "perfecto otra vez será" 0 0 ;;
                esac
                ;;
                "3")
                dialog --title "usuarios con bash" --msgbox "$(cat /etc/passwd | grep bash | cut -d ":" -f 1 | wc -l)" 0 0
                dialog --title "Usuarios" --yesno "¿quieres saber quienes son?" 0 0
                response=$?
                case $response in
                0)dialog --title "usuarios bash" --msgbox "$(cat /etc/passwd | grep bash | cut -d ":" -f 1))" 0 0 ;;
                1)dialog --title "usuarios bash" --msgbox "perfecto otra vez será" 0 0 ;;
                esac
                ;;
                "4")
                dialog --title "Usuarios con contraseña" --msgbox "$(sudo cat /etc/shadow | cut -d ":" -f 1,2 | grep '[$]' | wc -l)" 0 0 
                dialog --title "Usuarios con contraseña" --yesno "¿quieres saber sus nombres?" 0 0
                response=$?
                case $response in
                0)dialog --title "Usuariso contraseña" --msgbox "$(sudo cat /etc/shadow | grep '[$]' | cut -d ":" -f 1)" 0 0;;
                1)dialog --title "usuarios contraseña" --msgbox "mejor guardar el anonimato" 0 0 ;;
                esac
                ;;
                "5")
                dialog --title "salida" --yesno "¿quieres salir del programa?" 0 0
                response=$?
                case $response in 
                0)exit 0;;
                1)dialog --title "salir" --msgbox "seguimos usando el programa" 0 0 ;;
                esac
                ;;   
esac
fi
rm -f $TMPFCMD
done
$(clear) 
