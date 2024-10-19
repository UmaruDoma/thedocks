#######################################################
# Run Evironment for java8
# docker build -t java8 .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#######################################################
FROM debian

# === ARGS ===

#ARG USER=mint
#ARG GROUP=mint
#ARG UID=1000
#ARG GID=1000
#ARG PW=M00nb00ts2022

# === INST ===
WORKDIR /
RUN apt-get -y update \
    && apt-get -y install software-properties-common 
RUN apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'
RUN apt-get -y update \
    && apt-get -y install apt-utils iputils-ping wget \
    && apt-get -y upgrade bash \
    && apt-get -y install screen \
    && apt-get -y install mc nano\
    && apt-get -y update \
    && apt-get -y install openjdk-8-jdk

# === USER === 
#RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | \
#    chpasswd &&\
#    install -d -m 0755 -o ${USER} -g ${GROUP} /home/${USER}
#RUN chown ${USER}:${GROUP} /home/${USER}
#RUN chmod -R ugo+r /home/${USER}

CMD ["/bin/bash"]
