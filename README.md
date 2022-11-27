# nginx-gcs-proxy
Nginx proxly for Google Cloud Storage

## Authenticate Request to Artifact Registry
```zsh
gcloud auth configure-docker us-central1-docker.pkg.dev
```

## Set Environment Variables
```zsh
export IMG_VERSION="$(cat VERSION.txt)"
```
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
docker build -t ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMG_NAME}:${IMG_VERSION} .
```

## Push the Docker image to Artifact Registry
```zsh
docker push ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMG_NAME}:${IMG_VERSION}
```

## Run Locally
```zsh
docker run --rm -d -p 80:80 "${REGION}-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY}/${IMG_NAME}:${IMG_VERSION}"
```

## Reference
- https://docs.nginx.com/nginx/admin-guide/content-cache/content-caching/
- https://github.com/socialwifi/docker-nginx-gcs-proxy
