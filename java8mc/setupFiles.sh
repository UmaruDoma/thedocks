#!/bin/bash
#######################################################
# Setup Minecraft Servers Java 8
#
# (c) 2023 cndrbrbr
#######################################################
wget http://codefield.de/mcmine/scriptcraft14.zip -O /root/tmpdata/scriptcraft14.zip

unzip /root/tmpdata/scriptcraft14.zip /root/mcservers
rm /root/tmpdata/scriptcraft14.zip
RUN sleep 5

#chown -R mint:mint /home/mint/mcservers/
#chown -R mint:mint /home/mint/bac/
#chown -R mint:mint /home/mint/updates/
#chown -R www-data:www-data /home/mint/mcservers/scriptcraft14/spigot/scriptcraft/modules/code/
