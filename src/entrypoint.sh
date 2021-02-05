#!/bin/bash
SteamAppId="892970" LD_LIBRARY_PATH=/game/valheim/linux64:$LD_LIBRARY_PATH nohup valheim/valheim_server.x86_64 -nographics -batchmode -name "$SERVER_NAME" -port $PORT -world "$WORLD" -password "$PASSWORD" -public $PUBLIC &> /game/logs/valheim-services.log &

tail -f /game/logs/valheim-services.log