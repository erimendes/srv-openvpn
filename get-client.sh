#!/bin/bash

export OVPN_DATA=/var/lib/docker/volumes/ovpn-data-servidor
# Criar o volume em /var/lib/docker/volumes
#docker create volume --name $OVPN_DATA

# Nome do host no qual seu servidor pode ser acessado
export URL=user-servidordns.duckdns.org

# Protocol to use by OpenVPN: TCP/UDP
# Protocolo para usado na OpenVPN
export PROTO=udp

# A porta que deve ser exposta no host do docker
export PUBLIC_PORT=1194

#export S1=clientevpn
#export S2=nopass
#docker run  -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient $S1 > $S1.ovpn

#mkdir -p client-confs
#docker-compose run --rm servervpn ovpn_getclient $1 > client-confs/$1.ovpn
#docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient clientevpn > clientevpn.ovpn
s1=$1
#s2=$2
docker run  -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient "$s1" > "$s1.ovpn"
