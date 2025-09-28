#!/bin/bash
#######################################################
# Setup Minecraft Servers Java >=17
# unzip mapfiles to folders and
# ./setupFiles.sh
# (c) 2023 cndrbrbr
#######################################################
# für jedes mapzip einen server anlegen mit plugins und config 
# wenn das mapzip einen plugins folder hat, wird dieser verwendet
# andernfalls der standard plugin folder
# oder pro server einen container starten
# frage ist wie der bungee an die anderen container auf dem selben server kommt.
# und welche firewall konfiguriert werden muss

#!/bin/bash

# Directory containing the zip files (default: current directory)
ZIP_DIR="${1:-.}"
ZIP_DIR="${ZIP_DIR}/maps"

# Loop through each .zip file in the directory
for zipfile in "$ZIP_DIR"/*.zip; do
    # Skip if no zip files found
    [ -e "$zipfile" ] || continue

    # Get the base name (without path and extension)
    dirname="$(basename "$zipfile" .zip)"

    # Create a directory with the same name
    mkdir -p "$ZIP_DIR/$dirname"

    # Unzip the contents into the new directory
    unzip -o "$zipfile" -d "$ZIP_DIR/$dirname"

    # für jedes mapzip einen server anlegen mit plugins und config 
    # copy minecraft files to folder
    # copy plugins
    # automatisch maps importieren oder multiverse dateien ezeugen
    # session.lock löschen
done




# old version
#cd /root/tmpdata
#wget http://codefield.de/mcmine/mcserversC.zip
#cd /root/mcservers
#unzip /root/tmpdata/mcserversC.zip
#sleep 5
#rm /root/tmpdata/mcserversC.zip
#RUN sleep 5

#chown -R mint:mint /home/mint/mcservers/
#chown -R mint:mint /home/mint/bac/

#chown -R mint:mint /home/mint/updates/
#chown -R www-data:www-data /home/mint/mcservers/scriptcraft14/spigot/scriptcraft/modules/code/
