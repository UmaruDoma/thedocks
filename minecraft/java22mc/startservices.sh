#!/bin/bash
#######################################################
# Start Minecraft Server 
# --nogui
#
# (c) 2025 cndrbrbr
#######################################################

/root/mcservers/start.sh

#######################################################
# Bukkit/Spigor Commanline Parameter
#######################################################
#
# --bukkit-settings <file>.yml
# Alias: -b <file>.yml
# Default: bukkit.yml
# This parameter allows you to manually define the Bukkit configuration file to use for the server.
#
# --config <config file>.yml
# Alias: -c <file>.yml
# Default: server.properties
# This parameter allows you to manually define the configuration file to use for the server startup.
#
# -Dcom.mojang.eula.agree=true (for build #1544 and up)
# Position: before "-jar"
# This parameter allows you to run your server without editing the eula.txt. Put this parameter before "-jar".
# Please note, this is still legally binding that you have read and agree to the Minecraft EULA.
#
# --host <IP address>
# Alias: -h <IP address>
# Default: value from server.properties (none)
# This parameter allows you to manually define the hostname or IP address for the server to listen on.
# The argument may only include the IP address; please see below for overriding the port setting.
#
# --level-name <name>
# Aliases: -w <name> or --world <name>
# Default: value from server.properties (world)
# This parameter allows you to modify the level name, this will bypass the level-name= value in server.properties file.
# Please pay attention to the lowercase for the first alias.
#
#--max-players <amount>
# Aliases: -s <amount> or --size <amount>
# Default: value from server.properties (20)
# The maximum amount of players that the server will allow, this will bypass the max-players= value in server.properties file.
#
# --plugins <directory>
# Alias: -P <directory>
# Default: plugins
# This parameter allows you to manually define the plugins directory to use for the server.
# Please note, pay attention to the uppercase for the alias.
#
# --port <port number>
# Aliases: --server-port <port number> or -p <port number>
# Default: value from server.properties (25565)
# This parameter allows you to manually define the port for the server to listen on. Be sure that you have to port you are using open (port forwarded).
# Please pay attention to the lowercase for the alias.
#
# --spigot-settings <config file>.yml
# Alias: -S <file>.yml
# Default: spigot.yml
# This parameter allows you to manually define the configuration file to use for Spigot.
# Please pay attention to the uppercase for the first alias.
#
# --world-dir <directory>
# Aliases: -W <directory> or --universe <directory> or --world-container <directory>
# Default: ./
# This parameter will put all worlds your server uses into a specific directory, it's useful if you have many folders inside in the main server directory.
# Please pay attention to the uppercase for the first alias. 

