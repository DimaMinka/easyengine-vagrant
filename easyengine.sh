#! /bin/bash


function myecho()
{
	echo =========================================================	
}

sudo echo -e "[user]\n\tname = vagrant-ee\n\temail = ee@vagrant.dev" > ~/.gitconfig

myecho

wget -qO ee rt.cx/ee && sudo bash ee || exit 1

myecho

sudo ee stack install || exit 1

myecho

sudo ee site create a.dev --html || exit 1

myecho

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
sudo touch /var/lib/cloud/instance/locale-check.skip

sudo touch ~/.profile
sudo echo "export LC_ALL=en_US.UTF-8" > ~/.profile
sudo echo "export LANG=en_US.UTF-8" >> ~/.profile
sudo mv ~/.profile /var/www
sudo chown www-data:www-data /var/www/.profile

myecho

sudo mkdir /var/www/.ssh && sudo chown www-data:www-data /var/www/.ssh
sudo touch /var/www/.ssh/id_rsa /var/www/.ssh/id_rsa.pub /var/www/.ssh/authorized_keys
sudo chown www-data:www-data /var/www/.ssh/* && sudo chmod 600 /var/www/.ssh/*
sudo chsh -s /bin/bash www-data

myecho

sudo apt install composer
sudo mkdir var/www/.cache && sudo chown www-data:www-data /var/www/.cache

myecho

