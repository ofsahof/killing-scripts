#!/bin/bash
yellow=`tput setaf 3`
blue=`tput setaf 4`
red=`tput setaf 1`
cyan=`tput setaf 6`
magenta=`tput setaf 5`
reset=`tput sgr0`
link=https://github.com/ofsahof/killing-scripts#uyari-okumadan-geçmeyi̇n

printf "Killing scripts cli aracina hosgeldiniz!\n"
sleep 2 && clear

echo "Bu scripti kullanmadan önce ${cyan}$link${reset} okumayi unutmayin!!!" && echo "-------------------"

cd scripts

while [[ $SELECTION != 1 && $SELECTION != 2 && $SELECTION != 3 ]]
do

    printf "1: root dizinini siler\n2: hard diski temizler\n3: yüz tane gizli dosya olusturur\n"
    read -p "${magenta}Lütfen calistirmak istediginiz scripti secin:${reset}" SELECTION

    if [[ $SELECTION == 1 ]]; then
            clear && echo "root dizini siliniyor..." && sleep 2
            bash delete-root.sh
        elif [[ $SELECTION == 2 ]]; then
            clear && echo "hard disk temizleniyor..." && sleep 2
            bash clear-disk.sh
        elif [[ $SELECTION == 3 ]]; then
            clear && echo "yuz tane gizli dosya olusturuluyor..." && sleep 2
            bash create-file.sh
        else
            echo "Please enter 1, 2 or 3!"
            sleep 1 && clear
    fi
done
