#!/bin/bash
#
RACINE=/home/disks/pidrive01/projects/meteovendee

# Se mettre dans le répertoire capture
cd $RACINE/captures

# tester si la capure est en route sinon exit
var=$(ls -a . | sed -e "/\.$/d" | wc -l)
echo $var
if [ $var -eq 0 ]
then
   echo "*** Capture pas acivée ***"
   exit
fi
# Créer répertoire temp jour_heure et copier images capturées dedans
mkdir $RACINE/captures/temp
mv $RACINE/captures/*.jpg  $RACINE/captures/temp
# suppresion du fichier courant
rm $RACINE/captures/temp/webcam.jpg

# Archiver captures dand fichier tar JOUR_Heure.tar --> archives
tar cvf $RACINE/archives/$(date +%Y%m%d)_$(date +%H).tar $RACINE/captures/temp/*.jpg

# Créer fichier animation webcam GIF  --> transfert
convert -loop 0 -delay 25 $RACINE/captures/temp/*.jpg $RACINE/transfert/webcam.gif

# Récupère images radar / pluie et GIF Animé --> tranfert
sh $RACINE/bin/getsat24.sh

# ...

# Appeler script transfert
sh $RACINE/bin/transfertkazamarie.sh

# Mettre a jour site local
cp $RACINE/transfert/* $RACINE/www/images

# End - cleanup
rm -rf $RACINE/captures/temp
rm  $RACINE/transfert/*

exit 0