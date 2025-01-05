#!/bin/bash
#######################################################
# Setup Minecraft Servers Java >=17
#
# (c) 2023 cndrbrbr
#######################################################
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
