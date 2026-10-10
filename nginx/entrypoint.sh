#!/bin/sh

# OpenSSL installieren, falls es fehlt
if ! command -v openssl > /dev/null 2>&1; then
    echo "Installiere OpenSSL..."
    apk add --no-cache openssl
fi


if [ ! -f /etc/nginx/certs/m1.crt ]; then
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout /etc/nginx/certs/m1.key \
  -out /etc/nginx/certs/m1.crt \
  -subj "/CN=*.m1"
fi

# Nginx im Vordergrund ausführen
exec nginx -g 'daemon off;'
