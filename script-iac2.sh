#!/bin/bash

echo "atualizando o servidor ..."
apt-get update
apt-get upgrade -y
echo "Update e Upgrade concluidos!"
echo "Instalar Apache2 ..."
apt-get install apache2 -y
echo "Apache2 instalação concluida!"
echo "instalar Unzip ..."
apt-get install unzip -y
echo "Unzip instalação concluida!"

echo "Baixando e copiando os arquivos da aplicação ..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
