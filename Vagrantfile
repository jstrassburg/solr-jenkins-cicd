# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  box = "canimus/ubuntu-java8"
  
  config.vm.define vm_name = "stage" do |stage|
    stage.vm.hostname = vm_name
    stage.vm.network "forwarded_port", guest: 8983, host: 8983
    stage.vm.network "private_network", ip: "10.0.0.11"
    stage.vm.box = box
  end

  config.vm.define vm_name = "prod" do |prod|
    prod.vm.hostname = vm_name
    prod.vm.network "forwarded_port", guest: 8983, host: 8984
    prod.vm.network "private_network", ip: "10.0.0.12"
    prod.vm.box = box
  end
end
