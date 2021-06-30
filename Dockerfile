FROM nginx:alpine

ENV CONFIG_DEFAULT=/etc/nginx/conf.d/default.conf
ADD default.conf ${CONFIG_DEFAULT}

EXPOSE 80

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]