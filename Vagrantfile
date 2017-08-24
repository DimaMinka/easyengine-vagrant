Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

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

  config.vm.synced_folder "logs/", "/var/log/easyengine", owner: "root", group: "root"
  
  config.vm.provision "shell", path: "easyengine.sh"

  config.vm.provision "shell", inline: "apt-get update && apt-get install -y curl"
end
