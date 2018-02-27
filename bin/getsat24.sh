#!/bin/bash
#
# getsat24.sh -- - récupère images radar , pluie et anim gif radar à partir de sat24
#                - génération d'une carte Radar sat animée avec les donnéees du jours
#				 - met les images dans $RACINE/transfert

RACINE=/home/disks/pidrive01/projects/meteovendee

cd $RACINE/meteosat

# Carte Radar (concerve Images de la journée)
wget --output-document=sat24_radar.png https://api.sat24.com/mostrecent/EU/visual5hdcomplete
cp sat24_radar.png $RACINE/transfert
mv sat24_radar.png $(date +%Y%m%d)_$(date +%H%M)_sat24_radar.png

# Carte Pluie
wget --output-document=sat24_pluie.png https://api.sat24.com/mostrecent/EU/rainTMC
mv sat24_pluie.png $RACINE/transfert
 
 
# Carte GIF Animé
wget --output-document=sat24_animation.gif https://api.sat24.com/animated/FR/visual/2/Central%20Europe%20Standard%20Time/4538038
mv sat24_animation.gif $RACINE/transfert
 

# Make Carte Radar sat animée
convert -loop 0 -delay 25 $(date +%Y%m%d)_*_sat24_radar.png sat24_radar_animated.gif
mv sat24_radar_animated.gif $RACINE/transfert

