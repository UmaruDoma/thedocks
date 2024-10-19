#######################################################
# Run Evironment for java17
# docker build -t java17mc .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#######################################################
FROM debian

WORKDIR /
USER root
# === ARGS ===
ARG USER=mint
ARG UID=1000
ARG GID=1000
ARG PW=L3g0B33

RUN apt-get update -y \
    && apt-get -y install apt-utils iputils-ping wget\
    && apt-get -y upgrade \
    && apt-get -y install curl \
    && apt-get -y install screen htop\
    && apt-get -y install mc iputils-ping nano bash

#RUN echo "deb http://ftp.de.debian.org/debian trixie main" >> /etc/apt/sources.list \
#    && apt-get update \
#    && apt-get -y install openjdk-21-jre-headless

RUN echo "deb http://ftp.de.debian.org/debian sid main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y install openjdk-22-jre

#    && apt-get -y install openjdk-21-jre-headless
#   && apt-get -y install openjdk-17-jre-headless 

#https://packages.debian.org/sid/amd64/openjdk-22-jre-headless/download

# === USER ===
RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | \
    chpasswd &&\
    install -d -m 0755 -o mint -g mint /home/mint
RUN chown mint:mint /home/mint
RUN chmod -R ugo+r /home/mint
WORKDIR /home/mint
CMD ["/bin/bash"]
