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

myechomyecho

export LC_ALL="en_US.UTF-8"

myecho

sudo ee site create a.dev --html || exit 1

myecho

sudo mkdir /var/www/.ssh && sudo chown www-data:www-data /var/www/.ssh
sudo touch /var/www/.ssh/id_rsa /var/www/.ssh/id_rsa.pub /var/www/.ssh/authorized_keys
sudo chown www-data:www-data /var/www/.ssh/* && sudo chmod 600 /var/www/.ssh/*
sudo chsh -s /bin/bash www-data

myecho
