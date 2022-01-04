#!/bin/bash

qload_rom()
{
    if [ "$LASTROM" != "$3" ]
    then	
	export LASTROM="$3"
	echo "$LASTROM"

        if [ "$4" == "enablesave" ]
        then
        #echo "save enabled game"
        rm /media/fat/Games/"$1"/boot1.rom
        mbc load_rom "$1" /media/fat/Games/"$1"/"$2"
        else
        #echo "no save game"
        cp /media/fat/Games/"$1"/"$2" /media/fat/Games/"$1"/boot1.rom
        mbc load_core /media/fat/_Console/"$1"*.rbf
        fi	
    fi    
}

case "$1" in   
   "noscan") qload_rom Atari2600 noscan.rom "$1";;   
   "4034012226") qload_rom NES Anticipation.nes "$1";;
   "3826459960") qload_rom NES BubbleBobble.nes "$1";;
   "3978110274") qload_rom NES Castlevania.nes "$1" enablesave;;   
   "1826759746") qload_rom SNES Aladdin.sfc "$1";;   
   "1107764546") qload_rom SNES DK1.sfc "$1" enablesave;;
   "2398168120") qload_rom SNES DK2.sfc "$1" enablesave;;
   "3921617986") qload_rom SNES DK3.sfc "$1" enablesave;;   
esac
