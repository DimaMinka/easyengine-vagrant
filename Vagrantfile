Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  
  config.disksize.size = "20GB"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.hostname = "vagrant-ee"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.33.10"

  config.hostmanager.aliases = %w(
    a.dev
  )

  config.vm.synced_folder '.', '/vagrant', disabled: true

  # Project
  # config.vm.synced_folder '/Users/user', '/var/www', owner: "www-data", group: "www-data"
  
  config.vm.provider "virtualbox" do |v|
    # Name our Box
    v.name = "vagrant-ee"

    # Changes these values depending on your host system specs
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--cpus", 2]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.synced_folder "logs/", "/var/log/easyengine", owner: "root", group: "root"

  config.vm.provision "shell", inline: "apt-get update && apt-get install -y curl"
  
  config.vm.provision "shell", path: "easyengine.sh"

  config.vm.provision "shell", path: "wordmove.sh"
end
