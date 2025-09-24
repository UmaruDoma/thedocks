#######################################################
# Run Evironment for java22
# docker build -t java22 .
# docker run --rm java22
# (c) 2022 cndrbrbr
#######################################################
FROM debian:12.12

WORKDIR /root
USER root

RUN echo "deb http://ftp.de.debian.org/debian sid main" >> /etc/apt/sources.list 


RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install  screen mc nano

RUN apt-get install -y openjdk-22-jdk

CMD ["java", "-version"]
