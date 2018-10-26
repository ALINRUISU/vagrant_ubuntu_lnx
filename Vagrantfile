# -*- mode: ruby -*-
# vi: set ft=ruby :
 
Vagrant.configure("2") do |config|
    config.vm.box = "nios-8.3.1"
 
    config.vm.define :nios do |nios_config|
        nios_config.vm.hostname = 'nios-8.3.1'
        nios_config.vm.network "public_network", ip: "192.168.0.117"
    end
 
    config.vm.provider :virtualbox do |virtualbox_config|
        virtualbox_config.name = "nios-8.3.1"
		virtualbox_config.customize ["modifyvm", :id, "--memory", 8192]
		virtualbox_config.customize ["modifyvm", :id, "--cpus", 4]
    end
 
    #config.vm.provision :shell, path: "bootstrap.sh"
    
end