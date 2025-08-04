# nextcloud-coolify

1. Paste .env

2. Add Persisted Volumes:
```
nextcloud-data:/var/www/html
```

3. Add labels to proxy:
```yaml
      - traefik.http.middlewares.nextcloud-headers.headers.customrequestheaders.X-Forwarded-Proto=https
      - traefik.http.middlewares.nextcloud-headers.headers.customrequestheaders.X-Forwarded-Host=rien.cloud
      - traefik.http.middlewares.nextcloud-headers.headers.customrequestheaders.X-Forwarded-For=%CLIENTIP%
      - traefik.http.middlewares.nextcloud-headers.headers.stsheader=true
      - traefik.http.middlewares.nextcloud-headers.headers.stsheadermaxage=15552000
```

4. Update the gzip label on the nextcloud container:
```yaml
traefik.http.routers.https-0-gk8o8880wcoo4gcko8coccgc.middlewares=nextcloud-headers,gzip
```
*Make sure you replace gk8o8880wcoo4gcko8coccgc with the id of your container