#!/bin/bash

qload_rom()
{
    if [ "$LASTROM" != "$3" ]
    then
	echo "runningz"
	export LASTROM="$3"
	echo "$LASTROM"
	cp /media/fat/Games/"$1"/"$2" /media/fat/Games/"$1"/boot1.rom
	mbc load_core /media/fat/_Console/"$1"*.rbf
    fi
    
}


#echo "nice1"
#echo "$1"

case "$1" in
   "noscan") qload_rom Atari2600 noscan.rom "$1";;
   "1172212763") qload_rom NES HudsonsAdventureIsland.nes "$1";;
   "1") qload_rom NES HudsonsAdventureIsland.nes "$1";;
   "4034012224") qload_rom NES Anticipation.nes "$1";;
   "3826459968") qload_rom NES BubbleBobble.nes "$1";;
   "3978110272") qload_rom NES Castlevania.nes "$1";;
   "3614470403") qload_rom NES CastlevaniaIISimonsQuest.nes "$1";;
   "230927785") qload_rom NES CastlevaniaIIIDraculasCurse.nes "$1";;
   "2090083392") qload_rom NES Contra.nes "$1";;
   "2061378624") qload_rom NES SuperDodgeBall.nes "$1";;
   "1245729211") qload_rom NES DragonWarrior.nes "$1";;
   "755246400") qload_rom NES DrMario.nes "$1";;
   "828928003") qload_rom NES Excitebike.nes "$1";;
   "868061722") qload_rom NES GenghisKhan.nes "$1";;
   "681059392") qload_rom NES SuperMarioBros2.nes "$1";;
   "632235072") qload_rom NES LittleMermaid.nes "$1";;
   "3842843968") qload_rom NES MegaMan.nes "$1";;
   "913122368") qload_rom NES MegaMan2.nes "$1";;
   "3111789632") qload_rom NES MegaMan3.nes "$1";;
   "3313181760") qload_rom NES MegaMan4.nes "$1";;
   "3482330176") qload_rom NES MegaMan5.nes "$1";;
   "1783440448") qload_rom NES MegaMan6.nes "$1";;
   "2999657536") qload_rom NES NorthandSouth.nes "$1";;
   "1490035776") qload_rom NES MikeTysonsPunchOut.nes "$1";;
   "1503274048") qload_rom NES Rampage.nes "$1";;
   "1251550272") qload_rom NES RBIBaseball.nes "$1";;
   "752297024") qload_rom NES RCProAm.nes "$1";;
   "877405248") qload_rom NES SkateorDie.nes "$1";;
   "1382687808") qload_rom NES SuperMarioBros.nes "$1";;
   "1199645760") qload_rom NES SuperMarioBros3.nes "$1";;
   "2192581696") qload_rom NES SpyHunter.nes "$1";;
   "4032767040") qload_rom NES TecmoSuperBowl.nes "$1";;
   "4112590144") qload_rom NES Tetris.nes "$1";;
   "1994007616") qload_rom NES Willow.nes "$1";;
   "2120970243") qload_rom NES LegendofZelda.nes "$1";;
   "2568758592") qload_rom NES ZeldaIITheAdventureofLink.nes "$1";;
   "1826759744") qload_rom SNES Aladdin.sfc "$1";;
   "2110399552") qload_rom SNES SuperBomberman.sfc "$1";;
   "2539791424") qload_rom SNES SuperCastlevaniaIV.sfc "$1";;
   "1107764544") qload_rom SNES DK1.sfc "$1";;
   "2398168128") qload_rom SNES DK2.sfc "$1";;
   "3921617984") qload_rom SNES DK3.sfc "$1";;
   "3416073280") qload_rom SNES EarthwormJim.sfc "$1";;
   "881337408") qload_rom SNES EarthwormJim2.sfc "$1";;
   "4159644736") qload_rom SNES SuperStarWarsEmpireStrikesBack.sfc "$1";;
   "1308632384") qload_rom SNES FZero.sfc "$1";;
   "2070881344") qload_rom SNES HarvestMoon.sfc "$1";;
   "4069860416") qload_rom SNES SuperStarWarsReturnoftheJedi.sfc "$1";;
   "3281331264") qload_rom SNES JurassicPark.sfc "$1";;
   "554181952") qload_rom SNES JurassicPark2.sfc "$1";;
   "1175004480") qload_rom SNES SuperMarioKart.sfc "$1";;
   "3572245568") qload_rom SNES SuperMarioRPG.sfc "$1";;
   "1355621440") qload_rom SNES MetalMarines.sfc "$1";;
   "673326400") qload_rom SNES MagicalQuest.sfc "$1";;
   "4284425280") qload_rom SNES MicroMachines.sfc "$1";;
   "1071457344") qload_rom SNES MMX.sfc "$1";;
   "26485824") qload_rom SNES NBAJam.sfc "$1";;
   "3374327104") qload_rom SNES NBAJamTE.sfc "$1";;
   "4042728512") qload_rom SNES SuperPunchOut.sfc "$1";;
   "1895441472") qload_rom SNES SecretOfMana.sfc "$1";;
   "1539777600") qload_rom SNES SOS.sfc "$1";;
   "1192174912") qload_rom SNES StarFox2.sfc "$1";;
   "3686081600") qload_rom SNES SuperStarWars.sfc "$1";;
   "3214287936") qload_rom SNES SuperMarioWorld.sfc "$1";;
   "112534592") qload_rom SNES SuperMarioWorld2.sfc "$1";;
   "4143129664") qload_rom SNES TetrisAttack.sfc "$1";;
   "639313216") qload_rom SNES LegendofZelda.sfc "$1";;
   "1154838531") qload_rom SNES StarFox.sfc "$1";;
   "810624064") qload_rom SNES SuperMarioAllStars.sfc "$1";;
esac