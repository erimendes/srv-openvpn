#!/bin/bash
# Environment File for OpenVPN Server
# Arquivo de variaves de ambiente para servidor OpenVPN

# Definir o volume
#export OVPN_DATA=ovpn-data-servidor
export OVPN_DATA=/var/lib/docker/volumes/ovpn-data-servidor
# Criar o volume em /var/lib/docker/volumes
#docker create volume --name $OVPN_DATA

# Hostname on which your server is reachable
# Nome do host no qual seu servidor pode ser acessado
export URL=user-servidordns.duckdns.org

# Protocol to use by OpenVPN: TCP/UDP
# Protocolo para usado na OpenVPN
export PROTO=udp

# The port which should be exposed on the docker host
# A porta que deve ser exposta no host do docker
export PUBLIC_PORT=1194

echo $PROTO
echo $URL
echo $PUBLIC_PORT

docker compose up -d
