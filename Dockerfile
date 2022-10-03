FROM --platform=linux/amd64 nginx:1.23-alpine

COPY nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]
