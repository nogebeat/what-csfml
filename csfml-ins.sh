#!/bin/bash

if zenity --question --text="Voulez-vous installer les utilitaires de la CSFML ? ?"; then
    PASSWORD=$(zenity --password --title="Mot de passe requis")
    if [ -z "$PASSWORD" ]; then
        zenity --error --text="Aucun mot de passe fourni. L'installation a été annulée."
        exit 1
    fi

    echo "$PASSWORD" | sudo -S bash -c 'sudo apt --fix-broken install -y
    
    sudo apt install libcsfml* 

sudo apt --fix-broken install -y


clear

tput setaf 1
echo " _           _"
echo "| |\\        | | NOGE"
echo "| |\\\       | |"
echo "| | \\\      | | EPITECH BENIN"
echo "| |  \\\     | |"
echo "| |   \\\    | | NOGE"
echo "| |    \\\   | |"
echo "| |     \\\  | | EPITECH DIGITAL SCHOOL"
echo "| |      \\\ | |"
echo "|_|       \\\|_| NOGE"
tput sgr0'


    if [ $? -eq 0 ]; then
        zenity --info --text="Le logiciel a été installé avec succès par Noge Productions ."
    else
        zenity --error --text="Une erreur est survenue lors de l'installation de la CSFML ."
    fi
else
    zenity --info --text="L'installation des Logiciel a été annulée."
fi

wget - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/message.txt"

zenity --text-info --title="Message de NOGE" --filename=message.txt

rm -f message.txt
