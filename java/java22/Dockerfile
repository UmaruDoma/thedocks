#######################################################
# Run Evironment for java22
# docker build -t java22mc .
# Start with docker-compose
#
# (c) 2022 cndrbrbr
#######################################################
FROM debian:12

WORKDIR /root
USER root

RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install  screen mc nano


RUN echo "deb http://ftp.de.debian.org/debian trixie main" >> /etc/apt/sources.list 
RUN apt-get update
RUN apt-get install -y openjdk-22-jdk

CMD ["java", "-version"]
