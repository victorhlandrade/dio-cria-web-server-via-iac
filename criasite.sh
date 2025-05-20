#!/bin/bash


echo "Vamos atualizar o Servidor"

apt-get update
apt-get upgrade -y

echo "Baixando pacotes..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando o Site.."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando a aplicação..."

unzip main.zip

echo "Instalando..."

cd linux-site-dio-main
cp -R * /var/www/html

echo "Finalizado..."

