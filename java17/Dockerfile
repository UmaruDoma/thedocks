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
#ARG USER=mint
#ARG UID=1000
#ARG GID=1000
#ARG PW=M00nb00ts2022

RUN apt-get update -y \
    && apt-get -y install apt-utils iputils-ping wget\
    && apt-get -y upgrade \
    && apt-get -y install curl \
    && apt-get -y install screen \
    && apt-get -y install mc iputils-ping nano bash\
    && apt-get -y install openjdk-17-jre-headless 

# === JAVA ===
#RUN mkdir java17
#RUN cd java17
#RUN curl  -O https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz
##RUN curl  -O https://download.java.net/java/GA/jdk17.0.1/2a2082e5a09d4267845be086888add4f/12/GPL/openjdk-17.0.1_linux-x64_bin.tar.gz
#RUN tar -xvf openjdk-17.0.2_linux-x64_bin.tar.gz
#RUN mv jdk-17.0.2 /opt/
#ENV JAVA_HOME=/opt/jdk-17.0.2/
#RUN export JAVA_HOME
#ENV JRE_HOME=$JAVA_HOME/bin
#RUN export JRE_HOME
#ENV CLASSPATH=$JAVA_HOME/lib
#RUN export CLASSPATH
#ENV PATH=$PATH:/opt/jdk-17.0.2/bin
#RUN export PATH

#apt-get install openjdk-17-jre-headless -y

# === USER ===
#RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | \
#    chpasswd &&\
#    install -d -m 0755 -o mint -g mint /home/mint
#RUN chown mint:mint /home/mint
#RUN chmod -R ugo+r /home/mint
#WORKDIR /home/mint
CMD ["/bin/bash"]
