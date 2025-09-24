#!/bin/bash
#######################################################
# Setup Minecraft Servers Java >=17
#
# (c) 2023 cndrbrbr
#######################################################
# für jedes mapzip einen server anlegen mit plugins und config
# automatisch maps importieren oder multiverse dateien ezeugen
# oder pro server einen container starten
# frage ist wie der bungee an die anderen container auf dem selben server kommt.
# und welche firewall konfiguriert werden muss
cd /root/tmpdata
wget http://codefield.de/mcmine/mcserversC.zip
cd /root/mcservers
unzip /root/tmpdata/mcserversC.zip
sleep 5
rm /root/tmpdata/mcserversC.zip
#RUN sleep 5

#chown -R mint:mint /home/mint/mcservers/
#chown -R mint:mint /home/mint/bac/

#chown -R mint:mint /home/mint/updates/
#chown -R www-data:www-data /home/mint/mcservers/scriptcraft14/spigot/scriptcraft/modules/code/
