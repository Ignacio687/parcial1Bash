datetime=`date +"%d/%m/%Y %H:%M"`
cd /var/www/html/so/
mkdir i.chaves
cd i.chaves
wget -O fourInLine https://github.com/Ignacio687/4-en-linea.git
echo $datetime > index.html
