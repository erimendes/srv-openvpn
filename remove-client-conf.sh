#!/bin/bash
docker-compose run --rm servervpn ovpn_revokeclient $1 remove
rm -f client-confs/$1.ovpn
echo $(date '+%Y %b %d %H:%M'): revoked $1 >> VPNclients.log
