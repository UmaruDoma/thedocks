#!/bin/bash
#######################################################
# Setup websites and database
# docker build -t apachemmc .
#
# (c) 2023 cndrbrbr
#######################################################

cd /root/tmpdata
wget http://codefield.de/mcmine/sites-available.zip
wget http://codefield.de/mcmine/webs.zip
wget http://codefield.de/mcmine/webscript.zip
wget http://codefield.de/mcmine/mysqldata.zip

cd /var/www
unzip /root/tmpdata/webs.zip
unzip /root/tmpdata/webscript.zip
chown -R www-root:www-root /var/www

cd /etc/apache2/sites-available
unzip /root/tmpdata/sites-available.zip

cd /var/lib/mysql
unzip /root/tmpdata/mysqldata.zip 
chown -R mysql:mysql /var/lib/mysql
service mariadb start

a2ensite js
a2ensite primer
a2ensite meck
a2ensite mine
a2ensite kag
apachectl restart

sleep 10

rm /root/tmpdata/webs.zip
rm /root/tmpdata/webscript.zip
rm /root/tmpdata/sites-available.zip
rm /root/tmpdata/mysqldata.zip
