FROM nginx:1.23.3-alpine

COPY build/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT [ "nginx", "-g", "daemon off;",  ]
