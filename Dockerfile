FROM nginx:alpine

ENV INCLUDE_PATH=/etc/nginx/include.d/
ENV CONFIG_DEFAULT=/etc/nginx/conf.d/default.conf
ENV CONFIG_PROXY=${INCLUDE_PATH}proxy.conf
ADD default.conf ${CONFIG_DEFAULT}
RUN mkdir -p ${INCLUDE_PATH}

EXPOSE 80

COPY entrypoint.sh /docker-entrypoint.d/01-setup-url-proxy.sh
RUN chmod +x /docker-entrypoint.d/01-setup-url-proxy.sh