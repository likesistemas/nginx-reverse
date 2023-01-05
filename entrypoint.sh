#!/bin/sh
echo "proxy_pass ${BACKEND_SERVER};" >> ${CONFIG_PROXY}

if [ "${SEND_HOST}" = "true" ]; then
    echo "proxy_set_header Host \$host;" >> ${CONFIG_PROXY}
fi

cat $CONFIG_PROXY;