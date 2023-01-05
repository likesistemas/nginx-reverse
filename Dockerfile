FROM nginx:alpine

ENV CONFIG_DEFAULT=/etc/nginx/conf.d/default.conf
ADD default.conf ${CONFIG_DEFAULT}

EXPOSE 80

COPY entrypoint.sh /docker-entrypoint.d/01-setup-url-proxy.sh
RUN chmod +x /docker-entrypoint.d/01-setup-url-proxy.sh