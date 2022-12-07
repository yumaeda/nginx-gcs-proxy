# nginx-gcs-proxy
Nginx proxly for Google Cloud Storage

## Authenticate Request to Artifact Registry
```zsh
gcloud auth configure-docker us-central1-docker.pkg.dev
```

## Set Environment Variables
```zsh
export PROJECT_ID="hello-world-xxx"
```
```zsh
export REGION=us-central1 \
       REPOSITORY=nginx-gcs-proxy \
       IMG_NAME=nginx-gcs-proxy
```

## Build
```zsh
docker build -t ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMG_NAME}:latest .
```

## Push the Docker image to Artifact Registry
```zsh
docker push ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMG_NAME}:latest
```

## Run Locally
```zsh
docker run --rm -d -p 80:80 "${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMG_NAME}:latest"
```

## Test
```zsh
curl -H 'User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 14_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1 Mobile/15E148 Safari/604.1' http://localhost/
```

## Reference
- https://docs.nginx.com/nginx/admin-guide/content-cache/content-caching/
- https://github.com/socialwifi/docker-nginx-gcs-proxy
