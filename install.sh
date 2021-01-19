#!/usr/bin/env bash

echo ">>> Starting Install Script"
sudo apt-get update -y
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install python-setuptools -y
sudo apt-get install -y python3.6
sudo apt-get install -y python3.6-venv

curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo easy_install nodeenv

# Setting MySQL root user password root/root
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'


# Installing packages
sudo apt-get install -y mysql-server mysql-client

# Allow External Connections on your MySQL Service
# sudo sed -i -e 's/bind-addres/#bind-address/g' /etc/mysql/mysql.conf.d/mysqld.cnf
# sudo sed -i -e 's/skip-external-locking/#skip-external-locking/g' /etc/mysql/mysql.conf.d/mysqld.cnf
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root'; FLUSH privileges;"
sudo service mysql restart
# create client database
# mysql -u root -proot -e "CREATE DATABASE vmdb;"

# increase number of watchers for hot reloading
sudo /bin/su -c "echo 'fs.inotify.max_user_watches=524288' >> /etc/sysctl.conf"
sudo sysctl -p