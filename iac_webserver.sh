#!/bin/bash

echo "Atualizando o servidor..."

apt-get update -y
apt-get upgrade -y

echo "Instalando o servidor web apache..."

apt-get install apache2 -y

echo "Instalando o descompactador unzip..."

apt-get install unzip -y

echo "Realizando o download da aplicação que está no repositório github..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

echo "Descompactando o projeto baixado..."

unzip /tmp/main.zip -d /tmp

echo "Copiando arquivos para o diretório padrão do apache..."

cp -r /tmp/linux-site-dio-main  /var/www/html/

echo "Ligando servidor apache..."

service apache2 start

echo "Finalizado!"
