#!/bin/bash
#
RACINE=/home/disks/pidrive01/projects/meteovendee
USERNAME="kazamari"
PASSWORD="********************** A REMETTRE A JOUR ******"
SERVER="ftp.kazamarie.info"
  
# remote server directory to upload backup
REMOTEDIR="www/meteo/images"

# répertoire transfert

cd $RACINE/transfert

echo "Attempting ftp upload~, ..."
 

ftp -in $SERVER <<EOMYF
user $USERNAME $PASSWORD
pwd
cd $REMOTEDIR
put sat24_animation.gif
put sat24_pluie.png
put sat24_radar.png
put webcam.gif
put sat24_radar_animated.gif
cd slider
put slid1.jpg
put slid2.jpg
bye
EOMYF
