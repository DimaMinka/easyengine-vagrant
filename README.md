[EasyEngine](https://github.com/rtCamp/easyengine) - [Vagrant](https://vagrantup.com/)
==================

This is a simple Vagrant file to work with EasyEngine on your any system using Vagrant.
The box include [Wordmove](https://github.com/welaika/wordmove) for easy deployment and small fixes for easy working by ssh. (wordmove, wp-cli, composer, git, gtop)

Note: If you are using other that Ubuntu/Debian system, then installation steps will differ, but setup steps are same.


## Installation
1. First we will install Virtual Box and Vagrant on our system - [VirtualBox](https://www.virtualbox.org) or

  ```bash
  sudo apt-get install virtualbox
  ```
1.  After that download the latest version of Vagrant from the [Website](https://www.vagrantup.com/downloads.html)
2.  Install vagrant

  ```bash
   sudo dpkg -i vagrant_*.deb
  ```
2.  You will also need to install [vagrant-hostmanager](https://github.com/devopsgroup-io/vagrant-hostmanager) and [vagrant-disksize](https://github.com/sprotheroe/vagrant-disksize) plugins for Vagrant

  ```bash
    sudo vagrant plugin install vagrant-hostmanager
    sudo vagrant plugin install vagrant-disksize
  ```

## Let's setup Vagrant
1. You can use any distribution from [VagrantCloud](http://vagrantcloud.com/) that supports EasyEngine. By default EasyEngine-Vagrant uses ubuntu/precise. 
  To change the distribution open the Vagrantfile and replace ubuntu/xenial64 with box name

  ```bash
  git clone git@github.com:DimaMinka/easyengine-vagrant.git

  cd easyengine-vagrant
 ```
 
2. Now start Vagrant

  ```bash
  vagrant up
  ```
3. It will setup EasyEngine on Vagrant Box. To test, point your system browser to http://a.test - html project

4. To check installation log, open another terminal and use

  ```bash
  tail -f easyengine-vagrant/logs/*
  ```
