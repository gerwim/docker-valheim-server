# Docker Valheim server

To run:
```
docker run -ti -p 2456-2458:2456-2458 -p 2456-2458:2456-2458/udp -v /savegame:/root/.config/unity3d/IronGate/Valheim/worlds -e SERVER_NAME="My Valheim Server" -e PASSWORD="secret" gerwim/docker-valheim-server
```

Joining the server:
1. Go to the Servers view in Steam (Open Steam -> View -> Servers)
2. Add the server to your Steam favorites: `serverip:2457` (it's your starting port +1), `2457` is default.
3. Join through Steam! :-)


## Environment variables
| Variable  | Description | Default value |
| ------------- | ------------- | ------------- |
| SERVER_NAME  | Server name  | My Valheim server |
| WORLD  | Save game name  | dedicated |
| PUBLIC  | Public server | 1 |
| PASSWORD | Password for your server | secret |
| PORT | Starting port your server runs on | 2456 |
