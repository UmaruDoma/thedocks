
#!/bin/bash
#######################################################
# Setup websites
# docker build -t apachemmc .
#
# (c) 2022 cndrbrbr
#######################################################
service mysql stop
rm /var/lib/mysql/*
tar xvfz /tmp/setupmmc/databases.tgz -C /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql
#rm /tmp/setupmmc/databases.tgz
service mariadb start

sleep infinity