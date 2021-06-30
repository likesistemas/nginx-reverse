#!/bin/sh

set -e

nginx_config_file=/etc/nginx/server.conf

sed -i -e "s/\$url_proxy/${BACKEND_SERVER}/" ${CONFIG_DEFAULT}
cat ${CONFIG_DEFAULT}

exec nginx -g "daemon off;"

exec "$@"