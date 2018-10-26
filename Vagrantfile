# -*- mode: ruby -*-
# vi: set ft=ruby :
 
Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu1810"
 
    config.vm.define :nios do |nios_config|
        nios_config.vm.hostname = 'ubuntu1810'
        nios_config.vm.network "public_network", ip: "192.168.0.117"
    end
 
    config.vm.provider :virtualbox do |virtualbox_config|
        virtualbox_config.name = "ubuntu1810"
		virtualbox_config.customize ["modifyvm", :id, "--memory", 4096]
		virtualbox_config.customize ["modifyvm", :id, "--cpus", 2]
    end
 
    config.vm.provision :shell, path: "bootstrap.sh"
    
end