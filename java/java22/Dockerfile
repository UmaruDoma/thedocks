#######################################################
# Run Evironment for java17
# docker build -t java17mc .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#######################################################
FROM debian:12.1

WORKDIR /
USER root

# === ARGS ===
ARG USER=MINT
ARG UID=1000
ARG GID=1000
ARG PW=${MINT_PW}


RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install  screen mc nano


RUN echo "deb http://ftp.de.debian.org/debian trixie main" >> /etc/apt/sources.list 
RUN apt-get update
RUN apt-get install -y openjdk-22-source


#https://packages.debian.org/sid/amd64/openjdk-22-jre-headless/download

# === USER ===

RUN useradd -m "$USER" 
RUN echo "$USER:$PW" | chpasswd

#RUN useradd -m ${USER} --uid=${UID} 
#RUN echo "${USER}:${PW}" | chpasswd 
RUN install -d -m 0755 -o ${USER} -g ${USER} /home/${USER}
RUN chown ${USER}:${USER} /home/${USER}
RUN chmod -R ugo+r /home/${USER}
WORKDIR /home/${USER}
CMD ["/bin/bash"]
