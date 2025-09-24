#######################################################
# Run Evironment for java8
# docker build -t java8 .
# docker run java8
#  OpenJDK Runtime Environment (Temurin)(build 1.8.0_462-b08)
#  OpenJDK 64-Bit Server VM (Temurin)(build 25.462-b08, mixed mode)
#
# Start with docker-compose
# NAME="Debian GNU/Linux" VERSION="12 (bookworm)"
#
# (c) 2022 cndrbrbr
#######################################################
FROM debian:12
 
# Grundpakete installieren
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    apt-transport-https \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Adoptium Repo hinzufügen
RUN wget -O- https://packages.adoptium.net/artifactory/api/gpg/key/public \
    | gpg --dearmor \
    > /usr/share/keyrings/adoptium.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/adoptium.gpg] https://packages.adoptium.net/artifactory/deb bookworm main" \
    > /etc/apt/sources.list.d/adoptium.list

# Java 8 installieren
RUN apt-get update && apt-get install -y temurin-8-jdk && rm -rf /var/lib/apt/lists/*

CMD ["java", "-version"]
