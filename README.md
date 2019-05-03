# Rundeck Image with SSL

Build extended image

```
docker build -t rundeck-ssl .

```

Run 

```
docker run -d  --name some-rundeck -p 4444:4443 \
	   -e RUNDECK_GRAILS_URL=https://localhost:4444 \
	   rundeck-ssl \
       -Dserver.https.port=4443 \
       -Drundeck.ssl.config=/home/rundeck/server/config/ssl.properties
```
