#!/bin/bash
#Script de provisionamento de um servidor web (apache)

echo "Iniciando a atualização do sistema"
	apt-get update 
	apt-get upgrade -y
echo "Atualização finalizada"

	echo " "

echo "Iniciando a instalação dos serviços (apache2 e unzip)"
        apt-get install apache2 -y
        apt-get install unzip -y
echo "Instalação dos serviçoso finalizados"

	echo " "

echo "Baixando a aplicação no diretório /tmp"
	cd /tmp
	wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Download concluído"

	echo " "

echo "Descompactando e copiando os arquivos da aplicação "
	unzip main.zip
	cd linux-site-dio-main
	cp -R * /var/www/html/
echo "Descompactação e copia dos arquivos finalizada"

	echo " "

echo "Script finalizado, obrigada por utilizar!"

