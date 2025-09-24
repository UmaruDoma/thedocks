#######################################################
# Create Minecraft Server File
# docker stop  buildCmc
# docker rm  buildCmc
# docker rmi  buildCmc
# docker build -t buildCmc .
# docker attach buildCmc
# docker exec -ti buildCmc sh
# (c) 2022 cndrbrbr
#######################################################
FROM java17
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
