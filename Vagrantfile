# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "nodejs" do |nodejs|
    nodejs.vm.box = "kikitux/oracle6"
    nodejs.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end
    nodejs.vm.network "private_network", ip: "192.168.33.12"
    nodejs.vm.network "forwarded_port", guest: 7099, host: 7099
    nodejs.vm.provision :shell, path: "provision.sh"
  end
end
