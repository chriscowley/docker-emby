# docker-emby

Emby server based on Alpine

```
docker run -d -p 8096:8096 -p 1900:1900/udp -p 7359:7359/udp -v /srv/emby/media:/media -v /srv/emby/emby:/var/lib/emby chriscowley/emby
```
