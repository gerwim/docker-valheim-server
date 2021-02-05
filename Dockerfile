FROM steamcmd/steamcmd:ubuntu-18
LABEL MAINTAINER "Gerwim Feiken"

ENV SERVER_NAME="My Valheim server" \
    WORLD="dedicated" \
    PUBLIC="1" \
    PASSWORD="secret" \
    PORT="2456" 

WORKDIR /game
RUN steamcmd +login anonymous +force_install_dir /game/valheim +app_update 896660 -validate +quit

COPY src .
RUN mkdir -p /game/logs && touch /game/logs/valheim-services.log
RUN mkdir -p /root/.config/unity3d/IronGate/Valheim/worlds
VOLUME ["/root/.config/unity3d/IronGate/Valheim/worlds"] # save game location

ENTRYPOINT [ "bash", "entrypoint.sh" ]