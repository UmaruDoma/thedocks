
#!/bin/bash
#######################################################
# Start apache and mariadb
#
# (c) 2022 cndrbrbr
#######################################################

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

apachectl start
