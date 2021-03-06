#!/bin/bash
#
RACINE=/home/disks/pidrive01/projects/meteovendee

# capture 1 image par minute et renomme image suivant pattern $(date +%Y%m%d)_$(date +%H%M)_vendeecam.jpg
fswebcam -r 640x480 --title " VendéeCam à l'Ile d'Elle" --jpeg 95 --font sans:10  \
  --top-banner --banner-colour "#000000" --line-colour  "#FF000000" --text-colour  "#00FFFFFF"  \
  -save $RACINE/captures/webcam.jpg --exec ./renamewebcam.sh  -l 60

