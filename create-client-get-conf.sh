#!/bin/bash

export OVPN_DATA=/var/lib/docker/volumes/ovpn-data-servidor

# Nome do host no qual seu servidor pode ser acessado
export URL=user-servidordns.duckdns.org

# Protocolo para usado na OpenVPN
export PROTO=udp

# A porta que deve ser exposta no host do docker
export PUBLIC_PORT=1194


# $1: Clientname
# $2: nopass if needed
export S1=clientevpn_02
export S2=nopass
#docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $S1 nopass

#docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $S1 $S2
#docker compose run --rm -it servervpn easyrsa build-client-full $1 $2
#sh get-client-conf.sh $1
#echo $(date '+%Y %b %d %H:%M'): created $1 >> VPNclients.log
s1=$1
s2=$2
docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $s1 $s2
sh get-client.sh $s1
