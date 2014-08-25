#!/bin/bash
cd $HOME
sudo apt-get update -y
sudo apt-get install -y libreoffice
sudo apt-get install -y libreoffice-writer
sudo apt-get install -y libreoffice-calc
sudo apt-get install -y libreoffice-impress
sudo apt-get install -y libreoffice-draw
echo 'Starting Open Office'
/bin/su - www-data -c "/usr/bin/soffice --headless --nologo --nofirststartwizard --accept=\"socket,host=127.0.0.1,port=8100;urp\"" & > /dev/null 2>&1
echo 'Open Office Started'
wget http://alpha.library.yorku.ca/jodconverter-2.2.2.zip
unzip jodconverter-2.2.2.zip
cp -r jodconverter-2.2.2 $HOME/drupal-*/sites/all/libraries
sleep 20