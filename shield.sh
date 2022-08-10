#!/bin/bash
nano /etc/network/interfaces
/etc/init.d /networking restart
cd /var/www
rm index.php
wget https://raw.githubusercontent.com/Kanvret12/Shield-rest/main/index.php

cd /etc/apache2/sites-a*
rm tkj.conf
wget https://raw.githubusercontent.com/Kanvret12/Shield-rest/main/tkj.conf
a2dissite 0*
a2ensite t*
/etc/init.d/apache2 restart

echo 'SCRIPT INI MENGGUNAKAN IP 192.168.100.1'
echo ''