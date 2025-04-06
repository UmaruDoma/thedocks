FROM java17mc
# Infos zu neuen Versionen https://www.spigotmc.org/
ARG MC_VERSION=1.21
ARG MEM_LIMIT=1G
ARG USER=minecraft-docker
ARG GROUP=minecraft-docker
ARG UID=2000
ARG GID=2000
ARG PLUGIN_DIR=/plugins
ARG WORLD_DIR=/world
ARG EULA=true
ENV MC_VERSION=$MC_VERSION
ENV USER=$USER
ENV GROUP=$GROUP
ENV MEM_LIMIT=$MEM_LIMIT
ENV PLUGIN_DIR=$PLUGIN_DIR
ENV WORLD_DIR=$WORLD_DIR

RUN apt-get update \
    && apt-get install -y git wget gosu

# Git liefert den Exitcode 5, wenn der Parameter in der Konfiguration nicht gesetzt ist (Erkennt Docker als fehlerhaft)
# Wird nicht benoetigt, da im Standard unter Ubuntu 22 LTS nicht gesetzt
#RUN git config --global --unset 'core.autocrlf' || exit 0

VOLUME ${WORLD_DIR}
VOLUME ${PLUGIN_DIR}
WORKDIR /minecraft
RUN mkdir -p ${WORLD_DIR} ${PLUGIN_DIR}
# Die Eula-Datei wird erst beim ersten Start angelegt, sofern nicht bereits eine mit eula=true existiert
RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar \
    && java -jar BuildTools.jar --rev $MC_VERSION 
 #   && echo "eula=${EULA}" > eula.txt

RUN apt-get remove -y git wget \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -g ${GID} ${GROUP} \
    && useradd -u ${UID} -g ${GROUP} -s /bin/sh -m ${USER} \
    && chown ${USER}:${GROUP} . -R \
    && chown ${USER}:${GROUP} ${WORLD_DIR} -R \
    && chown ${USER}:${GROUP} ${PLUGIN_DIR} -R
USER ${UID}:${GID}

COPY minecraft.jar .
COPY docker-entrypoint.sh .
RUN chmod +x ./docker-entrypoint.sh

# CMD wird nicht genutzt, da in der Shell-Form ein Kindprozess gestartet wird -> Signale werden nicht weitergereicht
# Exec-Form loest Variablen nicht auf, die wir z.B. fuer das RAM Limit brauchen
ENTRYPOINT ["./docker-entrypoint.sh"]
