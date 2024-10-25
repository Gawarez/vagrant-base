# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-24.04"
  config.vm.hostname = "bioserver"
  
  config.vm.provision "file", source: "provision/.bash_aliases", destination: "/home/vagrant/.bash_aliases"
  config.vm.provision "shell", inline: "sudo apt update", privileged: false, run: "always"
  config.vm.provision "shell", path: "provision/utils.sh", privileged: false
  config.vm.provision "shell", path: "provision/docker.sh", privileged: false
  config.vm.provision "shell", path: "provision/kubernetes.sh", privileged: false
  
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
  end

  config.vm.synced_folder "./share", "/share"
end
