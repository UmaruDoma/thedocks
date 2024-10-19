#!/bin/sh

#######################################################
# Start apache
# docker build -t apachemmc .
#
# (c) 2022 cndrbrbr
#######################################################

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

cd /etc/apache2/sites-available
unzip /root/tmpdata/mecksites.zip
a2ensite meck.conf
a2ensite kag.conf
a2ensite mine.conf
a2ensite mctown.conf
a2ensite primer.conf
a2ensite js.conf

/root/startservices.sh
echo "current Apache and mariadb set up!" && sleep infinity
