# srv-openvpn

Passo 1: Install the OpenVPN Server
./00_install-OpenVPN-Server.sh
Passo 2:Start the OpenVPN Server
docker-compose up -d

Passo 3: Criar cliente 
Create client without private key passphrase
./create-new-client-and-get-conf.sh myClient nopass
OU:
Create client with private key passphrase
./create-new-client-and-get-conf.sh myClient

Passo 4: Para obter o arquivo de configuração do cliente de um cliente criado anteriormente:
./get-client-conf.sh myClient

Passo 5: Você pode querer revogar o acesso de clientes ao seu servidor
./revoke-client-conf.sh myClient
