#######################################################
# Create Minecraft Server File
# docker build -t build_c_mc .
# (c) 2022 cndrbrbr
#######################################################
FROM java22
USER root
RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install git \
    && apt-get -y install wget
WORKDIR /root
COPY ./startscript.sh /root
RUN chmod ugo+x startscript.sh

ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]
