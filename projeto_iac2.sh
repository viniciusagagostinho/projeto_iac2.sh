#!/bin/bash

echo "atualização do sistema" 

apt-get update
apt-get upgrade -y

echo "atualização de sistema finalizada"

echo "instalando apache e unzip"
apt-get install apache2 -y
apt-get install unzip -y


echo "acessando a pasta tmp, baixando arquivos para essa pasta, descompactando arquivo main.zip, acessando a pasta linux-site-dio-main, copiando os arquivos descompactados para a pasta padrão do apache"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "processo finalizado"
