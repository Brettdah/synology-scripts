#! /bin/bash

# new default port as traefik will take the lead on the reverse proxy
HTTP_PORT=81
HTTPS_PORT=444

sed -i "s/^\( *listen .*\)80/\1$HTTP_PORT/" /usr/syno/share/nginx/*.mustache
sed -i "s/^\( *listen .*\)443/\1$HTTPS_PORT/" /usr/syno/share/nginx/*.mustache
