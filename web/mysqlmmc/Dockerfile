#######################################################
# Run Evironment with msql
# docker build -t myslmmc .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#     2024 cndrbrbr change IP loopback
#######################################################
FROM debian

# === INST ===
USER root
WORKDIR /
RUN apt-get -y update \
    && apt-get -y install apt-utils iputils-ping mc \
    && apt-get -y install mariadb-server mariadb-client 
    
RUN mkdir /tmp/setupmmc
COPY ./databases.tgz /tmp/setupmmc/
COPY ./startscript.sh /tmp/setupmmc/
# /etc/mysql/mariadb.conf.d/50-server.cnf  127.0.0.1 -> 0.0.0.0
SEARCH_STRING="127.0.0.1"
REPLACE_STRING="0.0.0.0"
FILE = "/etc/mysql/mariadb.conf.d/50-server.cnf"
# Use sed to replace the search string with the replace string
sed -i.bak "s/${SEARCH_STRING}/${REPLACE_STRING}/g" "$FILE"

RUN chmod u+x /tmp/setupmmc/startscript.sh

ENTRYPOINT ["/bin/bash", "/tmp/setupmmc/startscript.sh"]