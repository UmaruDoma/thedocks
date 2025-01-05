#!/bin/bash
chown $USER:$GROUP $PLUGIN_DIR -R
echo "Verfügbare Plugins in ${PLUGIN_DIR}"
ls -lha $PLUGIN_DIR
echo "eula=true" > eula.txt
# https://www.spigotmc.org/wiki/start-up-parameters
exec gosu $USER:$GROUP java -Xms${MEM_LIMIT} -Xmx${MEM_LIMIT} -XX:+UseG1GC -jar spigot-${MC_VERSION}.jar nogui --world-dir ${WORLD_DIR} --plugins ${PLUGIN_DIR} --bukkit-settings ${WORLD_DIR}/bukkit.yml --commands-settings ${WORLD_DIR}/commands.yml --config ${WORLD_DIR}/server.properties --spigot-settings ${WORLD_DIR}/spigot.yml
