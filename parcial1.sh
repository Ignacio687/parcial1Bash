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
echo Capacidad utilizada de discos rígidos: $( df -h / --output=used) >> index.html
echo Cantidad de procesadores del servidor: $(lscpu | grep 'CPU(s)':) >> index.html
echo Lista de procesos en ejecución:$'\n' >> index.html
ps -ef >> index.html
usersOnLine=`users`
echo $usersOnLine >> index.html
alone=1
for user in $usersOnLine ;
do
        if [ $user != $USER ] ;
        then
                alone=0
        fi
done
if [ $alone == 0 ] ;
then
        echo Somos varios >> index.html
else
        echo Solo estoy yo >> index.html
fi
echo En mi carpeta personal '(/home/mz/so2022/i.chaves/)' existe el elemento saludo: $'\n'$(ls /home/mz/so2022/i.chaves/) >> index.html
echo El elemento saludo dice:$'\n'$(cat /home/mz/so2022/i.chaves/saludo) >> index.html
rm /home/mz/so2022/i.chaves/saludo
echo En mi carpeta personal '(/home/mz/so2022/i.chaves/)' ya no existe el elemento saludo: $'\n'$(ls /home/mz/so2022/i.chaves/) >> index.html
