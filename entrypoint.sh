#!/bin/sh
sed -i -e "s/\$url_proxy/${BACKEND_SERVER}/" ${CONFIG_DEFAULT}
cat ${CONFIG_DEFAULT}