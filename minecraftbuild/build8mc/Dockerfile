#######################################################
# Create Minecraft Server File
# docker rm  build8mc
# docker rmi  build8mc
# docker build -t build8mc .
# docker docker run --rm  -v $(pwd)/output:/data build8mc
# docker attach build8mc
# docker exec -ti build8mc sh
# (c) 2022 cndrbrbr
#######################################################
FROM java8
USER root
RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install git \
    && apt-get -y install wget
WORKDIR /root
#RUN mkdir /root/updates


COPY ./startscript.sh /root
#RUN 
RUN chmod u+x /root/startscript.sh

ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]
#ENTRYPOINT ["/bin/bash"]