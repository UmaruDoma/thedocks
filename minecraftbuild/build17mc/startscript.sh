
#!/bin/bash
#######################################################
# Create Minecraft Server File
# docker build -t build17mc .
#
# (c) 2022 cndrbrbr
#######################################################
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar
sleep 5
java -jar BuildTools.jar --rev latest 
cp /root/spigot*.jar /root/updates/