#######################################################
# Create Minecraft Server File
# docker stop  build17mcR
# docker rm  build17mcR
# docker rmi  build17mc
# docker build -t build17mc .
# docker run -d \
#   -it \
#   --name build17mcR \
#   -v /user/home/mint/mcsrvVersions:/user/home/mint/buildspigot \
#   build17mc:latest
# docker attach build17mcR
# docker exec -ti build17mcR sh
# (c) 2022 initial build cndrbrbr
#     2024 add java 22 cndrbrbr
#######################################################
FROM java22
USER root
RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install git \
    && apt-get -y install wget
WORKDIR /root
RUN mkdir /root/updates
COPY ./startscript.sh .
RUN chmod ugo+x startscript.sh
#RUN 
RUN chmod u+x startscript.sh
ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]
