# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-24.04"
  config.vm.hostname = "bioserver"
  
  config.vm.provision "shell", inline: "sudo apt update", privileged: false,
    run: "always"
  config.vm.provision "shell", path: "provision/setup_env.sh", privileged: false
  config.vm.provision "shell", path: "provision/install_docker.sh", privileged: false
  config.vm.provision "file", source: "provision/.bash_aliases", destination: "/home/vagrant/.bash_aliases"
  
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 512
    vb.cpus = 1
  end

  config.vm.synced_folder "./share", "/share"
end
