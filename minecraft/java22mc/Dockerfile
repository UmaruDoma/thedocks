#######################################################
# Run Evironment for Minecraft Server Files
# docker build -t java17mc .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#######################################################
FROM java22
USER root
RUN apt-get update --fix-missing -y
RUN apt-get -y upgrade 
RUN apt-get -y install mc nano

WORKDIR /root
RUN mkdir /root/mcservers
RUN mkdir /root/bac
RUN mkdir /root/tmpdata
RUN mkdir /root/tmpdata/plugins
RUN mkdir /root/tmpdata/mapdata
RUN mkdir /root/tmpdata/config

COPY ./startscript.sh /root
COPY ./setupfiles.sh /root
COPY ./startservices.sh /root
COPY ./spigot-*.jar /root/tmpdata
# jars
COPY ./plugins/*  /root/tmpdata/plugins
# zips
COPY ./mapdata/*  /root/tmpdata/mapdata    

RUN chmod u+x /root/startscript.sh
RUN chmod u+x /root/setupfiles.sh
RUN chmod u+x /root/startservices.sh


ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]
