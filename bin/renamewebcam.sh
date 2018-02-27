#!/bin/bash
#
RACINE=/home/disks/pidrive01/projects/meteovendee
cp $RACINE/captures/webcam.jpg $RACINE/captures/$(date +%Y%m%d)_$(date +%H%M)_vendeecam.jpg 
