
#!/bin/bash
#######################################################
# Create Minecraft Server File
# docker run --rm  -v $(pwd)/output:/data build8mc  sh -c "echo 'Hallo Welt3' > /data/ergebnis2.txt"
#
# (c) 2022 cndrbrbr
#######################################################
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar \
    && java -Xmx1024M -jar BuildTools.jar --rev 1.14.4 

wget https://github.com/CreeperHost/Log4jPatcher/releases/download/v1.0.1/Log4jPatcher-1.0.1.jar

mv spigot-*.jar /data
mv Log4jPatcher*.jar /data

