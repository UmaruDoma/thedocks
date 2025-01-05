#######################################################
# Run Evironment for wordpress
# docker build -t apachemmc .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
# 05.01.2023 include mariadb into config. easier to migrate.
#            just move www and db files.
#######################################################
FROM debian

ARG USER=mint
ARG GROUP=mint
ARG UID=1000
ARG GID=1000
ARG PW=L3g0B33

# === INST ===
USER root
WORKDIR /root
RUN apt-get -y update 
RUN apt -y install apt-utils iputils-ping
RUN apt-get -y upgrade 
RUN apt -y install mc nano bash wget screen htop\
    && apt-get -y install software-properties-common \
    && apt-get -y install apache2 apache2-utils  \
    && apt-get -y install mariadb-server  \
    && apt-get -y install php libapache2-mod-php php-pear php-mysql nodejs

# === USER === 
RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | \
    chpasswd &&\
    install -d -m 0755 -o ${USER} -g ${GROUP} /home/${USER}
RUN chown ${USER}:${GROUP} /home/${USER}
RUN chmod -R ugo+r /home/${USER}


# will be deflated to Docker-Volume at startup
RUN mkdir /root/tmpdata
RUN mkdir /home/mint/mcservers8
RUN mkdir /home/mint/mcserversC

COPY ./startscript.sh /root
#COPY ./setupfiles.sh /root
COPY ./startservices.sh /root
RUN chmod ugo+x /root/startscript.sh
#RUN chmod ugo+x /root/setupfiles.sh
RUN chmod ugo+x /root/startservices.sh

ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]

