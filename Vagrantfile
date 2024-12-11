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

    vb.customize ["createhd", "--filename", "disk1.vdi", "--size", 10240]
    vb.customize ["storageattach", :id, 
                  "--storagectl", "SATA Controller", 
                  "--port", 1, 
                  "--device", 0, 
                  "--type", "hdd", 
                  "--medium", "disk1.vdi"]
  end

  config.vm.synced_folder "./share", "/share"
end
