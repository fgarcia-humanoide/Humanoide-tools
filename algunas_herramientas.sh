# algunas_herramientas
#!/bin/bash
################################################################################
# Script for Installation: webmin, mc, htop
#
################################################################################
 

#--------------------------------------------------
# Install webmin
#--------------------------------------------------
echo -e "\n---- Installing webmin ----"
sudo echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
sudo echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list
sudo cd /root
sudo wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc
sudo apt-get update
sudo apt-get install webmin -y

#--------------------------------------------------
# Install htop mc
#--------------------------------------------------
sudo apt-get install htop -y
sudo apt-get install mc -y

#--------------------------------------------------
# Install some dependencies not installed before
#--------------------------------------------------
sudo pip install python-pip
sudo pip install unicode 
sudo pip install pysftp 
sudo pip install gdata
sudo pip install unidecode
sudo pip install unicodecsv
sudo pip install pysftp

echo "Done, webmin, mc and htop installed"
