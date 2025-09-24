#######################################################
# Run Evironment for java21
# docker build -t java21 .
# docker run --rm java21
# (c) 2022 cndrbrbr
#######################################################
FROM debian:12

WORKDIR /root
USER root

RUN apt-get update -y \
    && apt-get -y upgrade \
    && apt-get -y install  screen mc nano

RUN apt-get install -y default-jre

CMD ["java", "-version"]
