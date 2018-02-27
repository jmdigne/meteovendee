#!/bin/bash
#
RACINE=/home/disks/pidrive01/projects/meteovendee

# capture 1 image par minute et renome image suivant pattern
fswebcam -r 640x480 --title "Sud Vendée" --jpeg 95 --font sans:15 --subtitle "VendéeCam" --info "Motorisé par Raspberry Pi" -save $RACINE/captures/webcam.jpg --exec ./renamewebcam.sh  -l 60
