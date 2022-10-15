#!bin/bash

datetime=`date +"%d/%m/%Y %H:%M"`
cd /var/www/html/so/
echo Creando directorio i.chaves en /var/www/html/so/
mkdir i.chaves
cd i.chaves
echo Descargando repositorio
wget -O repo.zip https://github.com/Ignacio687/Parcial1-SistemasOperativos/archive/refs/heads/main.zip
unzip repo.zip 
cd Parcial1-SistemasOperativos
echo $datetime >> index.html
echo Autor: $(stat -c '%U' /home/mz/so2022/i.chaves/scripts/parcial1/parcial1.sh) >> index.html
echo Capacidad utilizada de discos rígidos: $( df -h / --output=used)
echo Cantidad de procesadores del servidor: $()