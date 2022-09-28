# nginx-gcs-proxy
Nginx proxly for Google Cloud Storage

## Build
```zsh
docker build --no-cache -t yumaeda/nginx-gcs-proxy .
```

## Run
```zsh
docker run --rm -d -p 8080:8080 yumaeda/nginx-gcs-proxy
```

## Reference
- https://github.com/socialwifi/docker-nginx-gcs-proxy

