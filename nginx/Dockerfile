FROM nginx:alpine
COPY public/ssl /etc/nginx/ssl
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
EXPOSE 443
ENTRYPOINT nginx -g "daemon off;"
