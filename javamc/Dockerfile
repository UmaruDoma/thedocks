#######################################################
# Run Evironment for Minecraft Server Files
# docker build -t java17mc .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#######################################################
FROM java17
USER root
RUN apt-get update --fix-missing -y
RUN apt-get -y upgrade 
RUN apt-get -y install mc nano

WORKDIR /root
RUN mkdir /root/mcservers
RUN mkdir /root/bac
RUN mkdir /root/tmpdata

COPY ./startscript.sh /root
COPY ./setupfiles.sh /root
COPY ./startservices.sh /root
RUN chmod u+x /root/startscript.sh
RUN chmod u+x /root/setupfiles.sh
RUN chmod u+x /root/startservices.sh


ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]
