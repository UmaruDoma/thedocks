#######################################################
# Run Evironment for java8
# docker build -t java8 .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#######################################################
FROM debian

# === ARGS ===

ARG USER=mint
ARG GROUP=mint
ARG UID=1000
ARG GID=1000
ARG PW=L3g0B33

# === INST ===
WORKDIR /
RUN apt-get -y update \
    && apt-get -y install software-properties-common 
RUN apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'
RUN apt-get -y update \
    && apt-get -y install apt-utils iputils-ping wget \
    && apt-get -y upgrade bash \
    && apt-get -y install screen \
    && apt-get -y install mc nano htop\
    && apt-get -y update 
    
RUN mkdir -p /etc/apt/keyrings 
RUN wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | tee /etc/apt/keyrings/adoptium.asc 
RUN echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list 
RUN apt-get -y update 
RUN apt-get -y install temurin-8-jdk

# === USER === 
RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | \
    chpasswd &&\
    install -d -m 0755 -o ${USER} -g ${GROUP} /home/${USER}
RUN chown ${USER}:${GROUP} /home/${USER}
RUN chmod -R ugo+r /home/${USER}

CMD ["/bin/bash"]
