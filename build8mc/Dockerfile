#######################################################
# Create Minecraft Server File
# docker rm  build8mcR
# docker rmi  build8mc
# docker build -t build8mc .
# docker run -d \
#   -it \
#   --name build8mcR \
#   -v /user/home/mint/mcsrvVersions:/user/home/mint/buildspigot \
#   build8mc:latest
# docker attach build8mcR
# docker exec -ti build8mcR sh
# (c) 2022 cndrbrbr
#######################################################
FROM java8
USER root
RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install git \
    && apt-get -y install wget
WORKDIR /root
RUN mkdir /root/updates

COPY ./startscript.sh /root
#RUN 
RUN chmod u+x /root/startscript.sh

ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]