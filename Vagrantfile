# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "nodejs" do |nodejs|
    nodejs.vm.box = "kikitux/oracle6"
    nodejs.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end
    nodejs.vm.provision :shell, inline: "/vagrant/provision.sh"
  end
end
