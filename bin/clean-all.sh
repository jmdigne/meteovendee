#!/bin/bash
#
# getsat24.sh -- - récupère images radar , pluie et anim gif radar à partir de sat24
#                - génération d'une carte Radar sat animée avec les donnéees du jours
#				 - met les images dans $RACINE/transfert

RACINE=/home/disks/pidrive01/projects/meteovendee

cd $RACINE/meteosat
rm -rf *

cd $RACINE/captures
rm *.jpg

cd $RACINE/archives
rm *.tar

cd $RACINE/logs
rm *.log

cd $RACINE/transfert
rm *.*



# vider la pouvelle
trash-empty