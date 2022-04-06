#!/bin/bash

qload_rom()
{
    if [ "$LASTROM" != "$3" ]
    then	
	export LASTROM="$3"
	echo "$LASTROM"

        if [ ! -f /media/fat/Games/"$1"/"$2".mgl ]
            then                
                echo "<mistergamedescription><rbf>_console/"$1"</rbf><file delay=\"2\" type=\"f\" index=\"0\" path=\"../../games/"$1"/"$2"\"/></mistergamedescription>" > "/media/fat/Games/"$1"/"$2".mgl"
        fi
        echo "load_core /media/fat/Games/"$1"/"$2".mgl" > /dev/MiSTer_cmd
	
    fi    
}

case "$1" in 
   "noscan") qload_rom Atari2600 noscan.rom "$1";;   
   "4034012226") qload_rom NES Anticipation.nes "$1";;
   "3826459960") qload_rom NES BubbleBobble.nes "$1";;
   "3978110274") qload_rom NES Castlevania.nes "$1";;   
   "1826759746") qload_rom SNES Aladdin.sfc "$1";;   
   "1107764546") qload_rom SNES DK1.sfc "$1";;
   "2398168120") qload_rom SNES DK2.sfc "$1";;
   "3921617986") qload_rom SNES DK3.sfc "$1";;   
esac
