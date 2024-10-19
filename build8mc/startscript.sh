
#!/bin/bash
#######################################################
# Create Minecraft Server File
# docker build -t build14.4mc .
#
# (c) 2022 cndrbrbr
#######################################################
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar
sleep 5
java -jar BuildTools.jar --rev 1.14.4 
cp /root/spigot*.jar /root/updates/
sleep infinity 