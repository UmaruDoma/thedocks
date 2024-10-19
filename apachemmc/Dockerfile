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

# === INST ===
USER root
WORKDIR /root
RUN apt-get -y update 
RUN apt -y install apt-utils iputils-ping
RUN apt-get -y upgrade 
RUN apt -y install mc nano bash wget screen \
    && apt-get -y install software-properties-common \
    && apt-get -y install apache2 apache2-utils  \
    && apt-get -y install mariadb-server nodejs fail2ban\
    && apt-get -y install php libapache2-mod-php php-pear php-mysql 

# will be deflated to Docker-Volume at startup
RUN mkdir /root/tmpdata
RUN mkdir /root/mcservers8
RUN mkdir /root/mcserversC

COPY ./mecksites.zip /root
COPY ./startscript.sh /root
COPY ./setupfiles.sh /root
COPY ./startservices.sh /root
RUN chmod ugo+x /root/startscript.sh
RUN chmod ugo+x /root/setupfiles.sh
RUN chmod ugo+x /root/startservices.sh

ENTRYPOINT ["/bin/bash", "/root/startscript.sh"]

