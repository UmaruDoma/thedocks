
#!/bin/bash
#######################################################
# Create Minecraft Server File
# docker run --rm  -v $(pwd)/output:/data build_c_mc
# (c) 2022 cndrbrbr
#######################################################
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar \
    && java -Xmx1024M -jar BuildTools.jar --rev 1.21.8

mv spigot-*.jar /data